class ArticlesController < ApplicationController
    # GET /articles
    def index
        @articles = Article.all
    end
    # def show; end       # GET /articles
    # GET /articles/new
    def new
    end
    # POST /articles
    def create
        @article = Article.new
        @article.title = params[:title]
        @article.body = params[:body]

        if @article.save
            redirect_to "/articles" # location: /articles
        else
            render.new
        end
    end
    # def edit; end       # GET /articles
    # def update; end     # GET /articles
    # def delete; end     # GET /articles
end
