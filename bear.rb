class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    @stomach.count()
  end

  def eats_fish(river)
    fish = river.catch_fish()
    @stomach.push(fish)
  end

  def roar()
    return 'Roooaaarrr'
  end

end