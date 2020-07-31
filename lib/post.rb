class Post
  attr_accessor :name, :genre, :author

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def author_title
    if author == nil
      nil
    else
      self.author.name
    end
  end

end