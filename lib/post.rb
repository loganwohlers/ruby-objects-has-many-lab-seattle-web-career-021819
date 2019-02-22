class Post

        @@all=[]
    
        attr_accessor :title, :author
    
        def initialize (title)
            self.title=title
            @@all.push(self)
        end
    
        def self.all
            @@all
        end
    
        def author_name
            self.author!=nil ? self.author.name : nil
        end
    
end