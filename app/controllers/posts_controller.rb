class PostsController < ApplicationController 

  def create
    @post = Post.create!(allowed_params)

    redirect_to meme_path(@post.meme)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to mememaster_memes_path
  end

  private
    def allowed_params
      params.require(:post).permit(:name, :image, :meme_id)
    end  
end