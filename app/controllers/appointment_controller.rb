class AppointmentController < ApplicationController
    def index
        
    end
    
    def new
        @appointment = Appointment.create(params[:appointment_params])
    end

end
