class Movie < ActiveRecord::Base
    def self.all_ratings
        %w(G PG PG-13 NC-17 R)
    end
    def self.ratings
        ['G', 'PG', 'PG-13', 'R']
    end
    def self.with_ratings(ratings)
        Movie.where(rating: ratings)
    end
end
