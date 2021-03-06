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
require 'test_helper'

class UnitTest < ActiveSupport::TestCase
  setup do
    @unit = units(:studio)
  end

  test '#valid?' do
    assert @unit.valid?
  end

  test '#price' do
    assert_equal 149.99, @unit.price
  end

  test '#name' do
    assert_equal 'Studio Unit', @unit.name
  end

  test '#description' do
    assert_match /MRT station/, @unit.description
  end

  test '#area' do
    assert_equal 37, @unit.area
  end

  test '#uom' do
    assert_equal 'sqm', @unit.uom
  end
end
