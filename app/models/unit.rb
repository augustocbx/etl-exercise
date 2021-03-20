# == Schema Information
#
# Table name: units
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  price       :decimal(8, 2)
#  name        :string
#  description :text
#  area        :float
#  uom         :string
#
class Unit < ApplicationRecord
end
