# == Schema Information
#
# Table name: users
# Database name: primary
#
#  id                     :bigint           not null, primary key
#  admin                  :boolean          default(FALSE), not null
#  archived_at            :datetime
#  confirmation_sent_at   :datetime
#  confirmation_token     :text
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :text
#  display_name           :text             not null
#  email                  :text             default(""), not null
#  encrypted_password     :text             default(""), not null
#  failed_attempts        :integer          default(0), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :text
#  locked_at              :datetime
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :text
#  sign_in_count          :integer          default(0), not null
#  slug                   :text             not null
#  unconfirmed_email      :text
#  unlock_token           :text
#  username               :text             not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#
class User < ApplicationRecord
  # Include Devise user authentication modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  has_many :pages, dependent: :destroy

  has_rich_text :profile
  has_one_attached :profile_picture

  validates :username, :display_name, presence: true

  # Track and store changes to users
  has_paper_trail

  # Prefer the user's username, or username and display name for its URL slug
  extend FriendlyId
  friendly_id :slug_candidates

  def slug_candidates
    [
      :username,
      [ :username, :display_name ]
    ]
  end

  def should_generate_new_friendly_id?
    username_changed? || display_name_changed? || super
  end
end
