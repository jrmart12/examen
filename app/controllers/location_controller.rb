class LocationController < ApplicationController
 before_action :authenticate_user!, except: [:index, :show]
   def show
  	@location = Location.find(params[:id])
  end
  def index
  end
  
  def new
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
def create
  @location = Location.new(location_params)
 
  @location.save
  redirect_to @location
end
 
private
  def location_params
    params.require(:location).permit(:name)
  end
  
end
