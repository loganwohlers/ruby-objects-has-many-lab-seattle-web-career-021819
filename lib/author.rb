class Author
        attr_accessor :name
    
        def initialize (name)
            self.name=name
            
        end
    
        def posts
            Post.all.select do |post|
                post.author==self
            end
        end
    
        def add_post (post)
            post.author=self
            #@@all.push(song)
        end
    
        def add_post_by_title (title)
            s=Post.new(title)
            s.author=self
            #@@all.push(song)
        end
    
        def self.post_count
            Post.all.length
        end 
    
    
end