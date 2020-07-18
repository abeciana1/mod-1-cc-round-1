class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in 
  
  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @@all << self
  end

  def self.all_screens
    @@all
  end

  def cars
    Car.all.select do |car|
      car.current_movie_screen == self
      # binding.pry
    end
  end

  def number_of_viewers
    total = cars.collect do |car|
      car.passenger_count 
    end.sum
  end

  def at_capacity?
    if number_of_viewers >= self.capacity
      true
    else
      false
    end
  end

  def available_spots
    self.capacity - number_of_viewers
  end

  def add_car(car)
    if self.at_capacity?
      puts "Sold Out!"
    else
      car.current_movie_screen = self
      puts "Enjoy!"
    end
  end
end
