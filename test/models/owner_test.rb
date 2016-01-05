require 'test_helper'
require 'pry'

class OwnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Name value is required" do
  	o = Owner.new
  	assert_not o.save
  end

  test "Name must be no longer than 35 characters" do
  	o = Owner.new
  	o.name = "SusanSusanSusanSusanSusanSusanSusanSusanSusan"
  	assert_not o.save
  end 

  test "Zip - should be at most 5 digits and must be number" do
  	z = Owner.new
  	z.name = "Susan"
  	z.zip = 123456
  	assert_not z.save
  end

  test "Expreince - must be value between 1-100" do
  	z = Owner.new
  	z.name = "Susan"
  	z.zip = 12345
  	z.expreince = 10
  	assert z.save

  end


end
