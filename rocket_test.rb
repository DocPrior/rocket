require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your( tests here!
  def test_initalize_default_value_change_name
    rocket = Rocket.new(name: "Bob")
    vaild = rocket.name
    assert_equal(vaild, "Bob" )
  end

  def test_initalize_default_value_change_colour
    rocket = Rocket.new(colour: "Red")
    vaild = rocket.colour
    assert_equal(vaild, "Red" )
  end

  def test_initalize_default_value_change_flying
    rocket = Rocket.new(flying: true)
    vaild = rocket.flying?
    assert_equal(vaild, true )
  end

  def test_initalize_default_value_change_flying_false
    rocket = Rocket.new
    vaild = rocket.flying?
    assert_equal(vaild, false)
  end

  def test_name
    rocket = Rocket.new(name: "Bob")
    name = rocket.name
    assert_equal(name, "Bob")
  end

  def test_name_new_name
    rocket = Rocket.new
    name = rocket.name=("Bob")
    assert_equal(name, "Bob")
  end

  def test_name_new_name_integer
    rocket = Rocket.new
    name = rocket.name=(1)
    assert_equal(name, 1)
  end
end
