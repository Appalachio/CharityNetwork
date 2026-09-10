# == Schema Information
#
# Table name: pages
# Database name: primary
#
#  id           :bigint           not null, primary key
#  archived_at  :datetime
#  published_at :datetime
#  slug         :text
#  subtitle     :text
#  title        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
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
