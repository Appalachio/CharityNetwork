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
FactoryBot.define do
  factory :page do
    title { "MyText" }
    subtitle { "MyText" }
    body { nil }
    slug { "MyText" }
    published_at { "2026-09-10 11:47:51" }
    archived_at { "2026-09-10 11:47:51" }
  end
end
