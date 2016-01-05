require 'test_helper'

class PetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Name of Pet - required, no more than 35 characters" do
  	p = Pet.new
  	p.name = "JohnJohnJohnJohnJohnJohnJohnJohnJohn"
  	assert_not p.save
  end

  test "Type of Pet - must be a dog, cat, or bird" do
  	p = Pet.new
  	p.name = "John"
  	p.types = "car"
  	assert_not p.save
  end

  test "Breed - required, no more than 35 characters" do
  	p = Pet.new
  	p.name = "John"
  	p.types = "car"
  	p.breed = "LongLongLongLongLongLongLongLongLongLong"
  	assert_not p.save
  end

  test "Age – required" do
  	p = Pet.new
  	p.name = "John"
  	p.types = "dog"
  	p.breed = "Long"
  	p.age = "abc"
  	assert_not p.save
  end

  test "Weight - required" do
  	p = Pet.new
  	p.name = "John"
  	p.types = "dog"
  	p.breed = "Long"
  	p.age = 23
  	p.weight = 'axf'
  	assert_not p.save
  end

  test "Date of Last Visit - required" do
  	p = Pet.new
  	p.name = "John"
  	p.types = "dog"
  	p.breed = "Long"
  	p.age = 23
  	p.weight = 'axf'
  	assert_not p.save
  end

end
