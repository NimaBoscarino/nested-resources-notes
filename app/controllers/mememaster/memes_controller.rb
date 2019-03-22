class Mememaster::MemesController < ApplicationController
  def index
    @memes = Meme.all
  end

  def show
    @meme = Meme.find(params[:id])
    @posts = @meme.posts
    @post = Post.new
    
  end
end