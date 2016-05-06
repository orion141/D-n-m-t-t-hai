class ArticlesController < ApplicationController
    def show
        @article= Article.find params[:id]
    end
    def index
        @articles=Article.all
    end
    def create
        @article=Article.new(params.require(:article).permit(:title, :content))
        @article.save
        redirect_to root_path
    end
    def destroy
        @article= Article.find params[:id]
        @article.destroy
        redirect_to :back
    end
    def edit
        @article= Article.find params[:id]
    end
    def update
        @article= Article.find params[:id]
        @article.update_attributes params.require(:article).permit(:title, :content)
        redirect_to article_path(@article)
    end
    def new
        @article=Article.new
    end
    def recents
        @recents_articles=Article.last(5)
        
    end
    
end
