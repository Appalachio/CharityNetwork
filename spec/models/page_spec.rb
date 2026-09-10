require 'rails_helper'

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
RSpec.describe Page, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
