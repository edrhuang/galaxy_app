class PlanetsController < ApplicationController
	helper_method :sort_column, :sort_direction 
	def index 
		@planets = Planet.order(sort_column + " " + sort_direction)
	end

	def new 
		@planet = Planet.new
	end 

	def create 
		@planet = Planet.new(planet_params)

		if  @planet.save
			redirect_to @planet 
		else 
			render 'new'
		end
	end

	def show 
		@planet = Planet.find(params[:id])
	end

	def edit 
		@planet = Planet.find(params[:id])
	end

	def update
		@planet = Planet.find(params[:id])
 
		if @planet.update(planet_params)
			redirect_to @planet
		else
			render 'edit'
		end
		
	end

	def destroy 
		@planet = Planet.find(params[:id])
		@planet.destroy

		redirect_to planets_path

	end




	private 
	def planet_params 
		params.require(:planet).permit(:planet, :diameter, :mythological_god)
	end

	def sort_column 
		params[:sort] || "planet"
	end

	def sort_direction 
		params[:direction] || "asc"
	end


end

