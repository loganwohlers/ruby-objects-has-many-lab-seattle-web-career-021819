class Artist
    attr_accessor :name
    #@@all =[]

    def initialize (name)
        self.name=name
        #@@all.push(self)
        
    end

    def songs
        Song.all.select do |song|
            song.artist==self
        end
    end

    def add_song (song)
        song.artist=self
        #@@all.push(song)
    end

    def add_song_by_name (title)
        s=Song.new(title)
        s.artist=self
        #@@all.push(song)
    end

    def self.song_count
        Song.all.length
    end 

end