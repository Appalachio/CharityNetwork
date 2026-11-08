# == Schema Information
#
# Table name: pages
# Database name: primary
#
#  id           :bigint           not null, primary key
#  archived_at  :datetime
#  published_at :datetime
#  slug         :text             not null
#  subtitle     :text
#  title        :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_pages_on_slug     (slug) UNIQUE
#  index_pages_on_title    (title)
#  index_pages_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_84a58494eb  (user_id => users.id)
#
class Page < ApplicationRecord
  belongs_to :user

  has_rich_text :body
  has_many_attached :page_attachments

  validates :title, :body, presence: true

  # Track and store changes to pages
  has_paper_trail

  # Soft delete pages
  include Archivable

  # Publish/unpublish pages
  include Publishable

  # Prefer the page's title, or title and subtitle for its URL slug
  extend FriendlyId
  friendly_id :slug_candidates

  def slug_candidates
    [
      :title,
      [ :title, :subtitle ]
    ]
  end

  def should_generate_new_friendly_id?
    title_changed? || subtitle_changed? || super
  end
end
