class BookingsController < ApplicationController
    def index  
        @bookings = Booking.all
        @test = @bookings.map do |booking|
            booking.parent
        end 
        byebug
    end

    def new 
        @booking = Booking.new
        @parents = Parent.all
        @sitters = Sitter.all
    end

    def show
        @booking = Booking.find(params[:id])
        @parent = @booking.parent
        @sitter = @booking.sitter
    end

    def create 
       @booking = Booking.new(booking_params)
        if @booking.save
        
            redirect_to booking_path(@booking)
        else 
            redirect_to new_booking_path
        end
    end

    def edit
        @booking = Booking.find(params[:id])
        @parents = Parent.all 
        @sitters = Sitter.all 
    end

    def update
        @booking = Booking.find(params[:id])
        @booking.update(booking_params)
       end
    
    def destroy
        @booking  = Booking.find(params[:id])
        @booking.destroy
        redirect_to new_booking_path
       end

    private
    def booking_params
        params.require(:booking).permit(:parent_id, :sitter_id, :start_date, :start_time, :end_date, :end_time)
    end
end
