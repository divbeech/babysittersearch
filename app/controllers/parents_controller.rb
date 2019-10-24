class ParentsController < ApplicationController
    def index  
        @parents = Parent.all
        # @test = @bookings.map do |booking|
        #     booking.parent
        # end 
        
    end

    def new 
        @parent = Parent.new
        
    end

    def show
        @parent = Parent.find(params[:id])
        
    end

    def create 
       @parent = Parent.new(parent_params)
      
        if @parent.save
        
            redirect_to parent_path(@parent)
        else 
            redirect_to new_parent_path
        end
    end

    def edit
        @parent = Parent.find(params[:id])
       
    end

    def update
        @parent = Parent.find(params[:id])
        @parent.update(parent_params)
        redirect_to parent_path(@parent)
       end
    
    def destroy
        @parent  = Parent.find(params[:id])
        @parent.destroy
        redirect_to new_parent_path
       end

    private
    def parent_params
        params.require(:parent).permit(:name, :childs_age)
    end
end
