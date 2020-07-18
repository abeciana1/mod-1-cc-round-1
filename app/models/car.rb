class Car
  attr_accessor :passenger_count, :current_movie_screen

  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    @current_movie_screen = current_movie_screen
    @@all << self
  end

  def self.all
    @@all
  end

end
