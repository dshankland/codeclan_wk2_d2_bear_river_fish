require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestBear < MiniTest::Test

  def setup()
    @bear = Bear.new('Yogi', 'Grizzly')
    @river = River.new('Amazon')
    @single_fish = Fish.new('Carp')
    for i in 1..100 do
      @river.add_fish(@single_fish)
    end
  end

  def test_bear_info()
    assert_equal('Yogi', @bear.name)
    assert_equal('Grizzly', @bear.type)
  end

  def test_eats_fish()
    @bear.eats_fish(@river)
    assert_equal(1, @bear.food_count())
    assert_equal(99, @river.count_fish())
  end

  def test_roars()
    assert_equal('Roooaaarrr', @bear.roar())
  end

end