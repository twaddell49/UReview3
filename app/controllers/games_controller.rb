class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def show
		id = params[:id]
		@game = Game.find(id)
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(params[:game])
		if @game.save
			flash[:notice] = "#{@game.title} was created"
			redirect_to games_path
		else
			render 'new'
		end
	end

	def edit
		@game = Game.find params[:id]
	end

	def update
		@game = Game.find params[:id]
		if @game.update_attributes(params[:game])
			flash[:notice] = "#{@game.title} was updated"
			redirect_to game_path(@game)
		else
			render 'edit'
		end
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy
		flash[:notice] = "#{@game.title} deleted"
		redirect_to games_path
	end
end