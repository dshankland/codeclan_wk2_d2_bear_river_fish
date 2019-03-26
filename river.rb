class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fishes = []
  end

  def count_fish()
    return @fishes.count()
  end

  def add_fish(fish)
    @fishes.push(fish)
  end

  def remove_fish()
    @fishes.pop()
  end

end