class AvailabilitiesController < ApplicationController
    def index
        @avabilities = Avability.all
    end
  
       def new 
        @availability = Availability.new
        @babysitter = Babysitter.all
       end
    
end
