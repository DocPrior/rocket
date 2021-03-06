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

  def test_colour
    rocket = Rocket.new(colour: "Red")
    colour = rocket.colour
    assert_equal(colour, "Red")
  end

  def test_colour_new
    rocket = Rocket.new
    colour = rocket.colour=("Red")
    assert_equal(colour, "Red")
  end

  def test_colour_new_integer
    rocket = Rocket.new
    colour = rocket.colour=(1)
    assert_equal(colour, 1)
  end

  def test_flying
    rocket = Rocket.new
    flying = rocket.flying?
    assert_equal(flying, false)
  end

  def test_flying_true
    rocket = Rocket.new(flying: true)
    flying = rocket.flying?
    assert_equal(flying, true)
  end

  def test_lift_off_false
    rocket = Rocket.new(flying: true)
    no_lift_off = rocket.lift_off
    assert_equal(no_lift_off, false)
  end

  def test_lift_off_true
    rocket = Rocket.new
    lifting_off = rocket.lift_off
    assert_equal(lifting_off, true)
  end

  def test_land_true
    rocket = Rocket.new(flying: true)
    landing = rocket.land
    assert_equal(landing, true)
  end

  def test_land_false
    rocket = Rocket.new
    landing = rocket.land
    assert_equal(landing, false)
  end

  def test_status_flying
    rocket = Rocket.new(name: "Bob", flying: true)
    rocket_status = rocket.status
    assert_equal(rocket_status, "Rocket Bob is flying through the sky!")
  end

  def test_status_not_flying
    rocket = Rocket.new(name: "Bob")
    rocket_status = rocket.status
    assert_equal(rocket_status, "Rocket Bob is ready for lift off!")
  end

  def test_status_flying_integer
    rocket = Rocket.new(name: 1)
    rocket_status = rocket.status
    assert_equal(rocket_status, "Rocket 1 is ready for lift off!")
  end

end
