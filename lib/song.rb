class Song

    @@all=[]

    attr_accessor :name, :artist

    def initialize (name)
        self.name=name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist!=nil ? self.artist.name : nil
    end
end