class ArticlesController < ApplicationController
  def index
    @resource = Category.find_by_slug(params[:category_id]) || Tag.find_by_slug(params[:tag_id])
  end

  def legacy_url
    @article = Article.find_by_url "articles/#{params[:month]}/#{params[:day]}/#{params[:year]}/#{params[:title]}"
    redirect_to category_article_path(@article.category.to_param,@article.to_param)
  end

  def show
    @article = Article.find_by_slug(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params[:article]
    if @article.save
      redirect_to @article.url
    else
      render 'new'
    end
  end

end
