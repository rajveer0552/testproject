class ArticlesController < ApplicationController
	before_action :set_article, only: %i[show edit update destroy]
	def index
		@articles = Article.all
	end
	def new
		@article = Article.new
	end
	def create
	@article = Article.new(article_params)
	if @article.save
		redirect_to articles_path, notice: "student has been created successfully"
	else
		render :new
	end
	end
	def show	
	end
	def edit
	end
	def update
	if @article.update(article_params)
		redirect_to articles_path, notice: "student has been updated successfully"
	else
		render :edit
	end
	end
	def destroy
		@article.destroy
		redirect_to articles_path, notice: "student has been deleted successfully"
	end
	private
	def article_params
		params.require(:article).permit(:name, :last_name, :mobile_number, :adhar_number, :blood_group)
	end
	def set_article
		@article = Article.find(params[:id])
	end
end
