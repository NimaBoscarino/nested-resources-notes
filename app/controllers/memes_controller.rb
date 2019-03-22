class MemesController < ApplicationController 
  def index
    @memes = Meme.all
  end

  def new
    @meme = Meme.new
  end

  def create
    # create and save the meme category to the database
    @meme = Meme.create!(allowed_params)

    redirect_to memes_path
  end

  def show
    # show that meme info, plus its posts
    @meme = Meme.find(params[:id])
    @posts = @meme.posts # all the posts for that meme
    @post = Post.new

  end

  private
    def allowed_params
      puts params
      params.require(:meme).permit(:name, :description, :image)
    end  
end