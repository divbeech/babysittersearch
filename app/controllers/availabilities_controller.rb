class AvailabilitiesController < ApplicationController
    def index
        @avabilities = Avability.all
    end
  
       def new 
        @availability = Availability.new
        @babysitter = Babysitter.all
       end
    
    #    def show
    #     @employee = Employee.find(params[:id])
    #    end
    
    #    def create
        
    #     @employee = Employee.create(employee_params)
    #      if @employee.save
    #     redirect_to employee_path(@employee)
        
            
    #     else
    #         redirect_to new_employee_path
    #     end
    #    end
    
    #    def edit
    #     @employee = Employee.find(params[:id])
    #    end
    
    #    def update
    #     @employee = Employee.find(params[:id])
    #     @employee.update(employee_params)
    #    end
    
    #    def destroy
    #     @employee = Employee.find(params[:id])
    #     @employee.destroy
    #     redirect_to new_employee_path
    #    end
    
    #    private
    #    def employee_params
    #     params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    #    end
    
end
