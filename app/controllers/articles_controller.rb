class ArticlesController < ApplicationController
before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = article.all
  end

  def new
    @article = article.new
  end

  def show
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :details)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
