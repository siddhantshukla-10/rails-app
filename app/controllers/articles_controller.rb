class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect   #getting whatever is send by the form in the new template
    #cannot create article instance variable staright away from params, first we need to create a function to whitelist the
    #information sent by the form
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
    #redirecting to show path and show needs article id to display one specific articles
    #that's why we pass the @article in the parameter
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
 
end
