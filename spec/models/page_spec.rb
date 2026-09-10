require 'rails_helper'

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
#
# Indexes
#
#  index_pages_on_slug   (slug) UNIQUE
#  index_pages_on_title  (title)
#
RSpec.describe Page, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
