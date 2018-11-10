class CommentsController < ApplicationController
  def create
    #Поиск конкретного поста
    @post = Post.find(params[:post_id])
    #Создание комментария
    @comment = @post.comments.create(comments_params)
    #перенаправить к посту
    redirect_to post_path(@post)
  end
  #приватный метод для коммента
  private def comments_params
    #данные коммента
    params.require(:comment).permit(:username, :body)
  end
end
