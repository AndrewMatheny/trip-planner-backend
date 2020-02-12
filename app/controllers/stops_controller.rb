class StopsController < ApplicationController
    def index
        @stops = Stop.all 
        render :json => @stops
    end

    def show
        @stop = Stop.find(params[:id])
        render :json => @stop
    end

    def create 
        @trip = Trip.find(params[:trip_id])
        @stop = Stop.new(stop_params)
        @stop.save 
        render :json => @stop 
    end 

    def edit 
        @stop = Stop.find(params[:id])
    end 

    def update 
        @stop = Stop.find(params[:id])
        @stop.update(stop_params)
        render :json => @stop
    end 

    def destroy
        @stop = Stop.find(params[:id])
        @temp = @stop
        @stop.delete
        render :json => @temp
    end

    private 
    def stop_params
        params.require(:stop).permit(:name, :location, :date, :notes, :trip_id)
    end 
end
