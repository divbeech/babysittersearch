class SittersController < ApplicationController
    def index  
        @sitters = Sitter.all
        # @test = @bookings.map do |booking|
        #     booking.parent
        # end 
        
    end

    def new 
        @sitter = Sitter.new
        
    end

    def show
        @sitter = Sitter.find(params[:id])
        
    end

    def create 
       @sitter = Sitter.new(sitter_params)
      
        if @sitter.save
        
            redirect_to sitter_path(@sitter)
        else 
            redirect_to new_sitter_path
        end
    end

    def edit
        @sitter = Sitter.find(params[:id])
       
    end

    def update
        @sitter = Sitter.find(params[:id])
        @sitter.update(sitter_params)
        redirect_to sitter_path(@sitter)
       end
    
    def destroy
        @sitter  = Sitter.find(params[:id])
        @sitter.destroy
        redirect_to new_sitter_path
       end

    private
    def sitter_params
        params.require(:sitter).permit(:name)
    end
end

