require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup()
    @river = River.new('Amazon')
    @single_fish = Fish.new('Carp')
    for i in 1..100 do
      @river.add_fish(@single_fish)
    end
  end

  def test_get_river_name()
    assert_equal('Amazon', @river.name)
  end

  def test_count_fish()
    assert_equal(100, @river.count_fish())
  end

  def test_add_fish()
    @river.add_fish(@single_fish)
    assert_equal(101, @river.count_fish())
  end

  def test_catch_fish_from_river()
    @river.catch_fish()
    assert_equal(99, @river.count_fish())
  end

end