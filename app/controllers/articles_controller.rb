class ArticlesController < ApplicationController
	before_action :find_art, only: [:show, :edit, :update, :destroy]

	def index
		if params[:categorium].blank?
			@arts = Article.all.order("created_at DESC")
		else
			@cate = Categorium.find_by(name: params[:categorium]).id
			@arts = Article.where(categ_id: @cate).order("created_at DESC")
		end
	end

	def new
		@art = Article.new
	end

	def create
		@art = Article.new(article_params)
		if @art.save
			redirect_to @art
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end


	

	private

	def article_params
		params.require(:article).permit(:titulo, :content, :categ_id)
	end

	def find_art
		@art = Article.find(params[:id])
	end
end
