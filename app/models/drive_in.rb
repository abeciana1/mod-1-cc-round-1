class DriveIn

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def screens
        MovieScreen.all_screens.select do |screen|
            screen.drive_in == self
        end
    end

    def whats_playing
        screens.collect do |screen|
            screen.movie_title
        end
    end

    def full_house?
        # screens[0].at_capacity?

        screens.any? do |screen|
            screen.at_capacity?
        end
    end
end
