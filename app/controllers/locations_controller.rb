class LocationsController < ApplicationController
	 	before_action :authenticate_user!
	def index
		@locations = Location.all.order('Created_at DESC')
	end

	def new
		@location = Location.new
	end

	def edit
		@location = Location.find(params[:id])
	end

	def create
		@location = current_user.location.new(location_params)

		@location.save
			redirect_to @location
	end 

	def show
		@location = Location.find(params[:id])
	end

	def update
		@location = Location.find(params[:id])

		if @location.update(post_params)
			redirect_to @location
		else
			render 'edit'
		end
	end

	def destroy
		@location = Location.find(params[:id])
		@location.destroy

		redirect_to locations_path
	end

	private
		def location_params
			params.require(:location).permit(:name)
		end
  
end
