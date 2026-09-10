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
#  title        :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_pages_on_title  (title)
#
class Page < ApplicationRecord
  has_rich_text :body
  has_many_attached :page_attachments

  validates :title, :body, presence: true

  # Track and store changes to pages
  has_paper_trail
end
