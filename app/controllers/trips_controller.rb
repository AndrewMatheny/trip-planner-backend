class TripsController < ApplicationController
    def index
        @trips = Trip.all 
        render :json => @trips
    end

    def show
        @trip = Trip.find(params[:id])
        render :json => @trip
    end

    def create 
        @user = User.find(params[:user_id])
        @trip = Trip.new(trip_params)
        @trip.save 
        render :json => @trip 
    end 

    def edit 
        @trip = Trip.find(params[:id])
    end 

    def update 
        @trip = Trip.find(params[:id])
        @trip.update(trip_params)
        render :json => @trip
    end 

    def destroy
        @trip = Trip.find(params[:id])
        @trip.delete
    end

    private 
    def trip_params
        params.require(:trip).permit(:name, :location, :image, :category, :date, :notes, :user_id)
    end 
end



