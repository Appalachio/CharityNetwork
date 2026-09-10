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
class Page < ApplicationRecord
  has_rich_text :body
end
