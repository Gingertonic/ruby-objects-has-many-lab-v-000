class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(posttitle)
    newpost = Post.new
    newpost.author = self
    @posts << newpost
  end
end
