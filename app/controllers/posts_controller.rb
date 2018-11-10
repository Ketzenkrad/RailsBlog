class PostsController < ApplicationController

  def index
    #Функционал;
    #Показываем все статьи из DB
    @post = Post.all
  end

  def new
    #Новые посты;
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    # render plain: params[:post].inspect
    #Получаем параметры от формы с указанием типа;
    @post = Post.new(post_params)
    #сохраняем
    if(@post.save)
    #Перенаправление
    redirect_to @post
    #Если не прошла проверка
    else
      render 'new'
    end
  end

  private def post_params
    params.require(:post).permit(:title, :body)
  end

end
