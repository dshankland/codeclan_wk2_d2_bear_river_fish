require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup()
    @fish = Fish.new('Carp')
  end

  def test_get_fish_name()
    assert_equal('Carp', @fish.name)
  end

end
