class AuthorController < ApplicationController
  def create_author
    @article = Article.find(params[:article_id])
    @author = @article.create_author(author_params)

    redirect_to article_path(@article)
  end


private

  def author_params
    params.require(:author).permit(:name, :age, :email)
  end
end

