require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


car1 = Car.new(4)
car2 = Car.new(3)
car3 = Car.new(1)
car4 = Car.new(1)
car5= Car.new(1000)
car6 = Car.new(10)

d1 = DriveIn.new("DriveIn1")
d2 = DriveIn.new("DriveIn2")

ms1 = MovieScreen.new("King Kong", 20, d2)
ms2 = MovieScreen.new("Godzilla", 30, d2)
ms3 = MovieScreen.new("Avengers", 10, d1)


car1.current_movie_screen = ms1
car2.current_movie_screen = ms1
car1.current_movie_screen

ms1.cars

d1.screens

ms1.number_of_viewers

ms1.at_capacity?

ms1.available_spots

puts car1.current_movie_screen = ms1
puts car2.current_movie_screen = ms1
car1.current_movie_screen
puts ms1.add_car(car3)
puts ms1.add_car(car4)

ms3.add_car(car6)

# ms1.add_car(car5)

d1.whats_playing

d1.full_house?

### WRITE YOUR TEST CODE HERE ###

binding.pry

0
