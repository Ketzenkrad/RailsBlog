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
  #показать посты
  def show
    @post = Post.find(params[:id])
  end
  #изменение
  def edit
    @post = Post.find(params[:id])
  end
  #обновить после правок
  def update
    @post = Post.find(params[:id])
    if(@post.update(post_params))
    #Перенаправление
    redirect_to @post
    #Но если ошибка - вернуть к редактированию
    else
      render 'edit'
    end
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

  #Удаление статьи;
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to home_path
  end

end
