class PostsController < ApplicationController

  def index
    #Функционал;
  end

  def new
    #Новые посты;
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    # render plain: params[:post].inspect
    #Получаем параметры от формы с указанием типа;
    @post = Post.new(post_params)
    #сохраняем
    @post.save
    #Перенаправление
    redirect_to @post
  end

  private def post_params
    params.require(:post).permit(:title, :body)
  end

end
