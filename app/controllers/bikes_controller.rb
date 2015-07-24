class BikesController < ApplicationController
  
  def index
    @bikes = Bike.all

  end

  def new
     @bike = Bike.new
  end

  def show
     @bike = Bike.find(params[:id])
  end

  def edit
     @bike = Bike.find(params[:id])
  end

   def create
    @bike = Bike.new(bike_params)
    if @bike.save
    redirect_to root_path
    else
    render 'new'
    end
   end  

  def update
    @bike = Bike.find (params[:id])
    if @bikes.update_attributes(bike_params)
      redirect_to bike_path
    else
      render 'edit'  
    end
  end

  def destroy
    @bike = Bike.find(params[:id]).destroy
    redirect_to bikes_index_path
  end
end

private

def  bike_params
  params.require(:bike).permit(:price, :color, :image_url, :size)
end

  

