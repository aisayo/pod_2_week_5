class Doctor

    attr_accessor :name

    # just need to be able to do .appointments => return that array of appts 
    attr_reader :appointments

    # def appointments # instance method, we call it on the instance
    #     @appointments 
    # end 
  
    def initialize(name)
      @name = name
      # doctor has many appointments 
      # has many relationship 
      @appointments = []
    end
  
    def add_appointment(appointment)
    # adding the appointment to the array of appointments that belong
    # to this doctor 
      @appointments << appointment
      # appointment is the appointment instance
      # .doctor is coming from appt class, attr_accessor 
      appointment.doctor = self # self is the doctor instance 
    end
  

# has many through relationship
# doctor has many patients through the appointments 
# this method behaves as a reader method 
    def patients # instance method 
        # what is self? instance 
        # self.appointments rreturns an array 
        # collect returns a new array
        # returning a new array 
      appointments.map {|appointment| appointment.patient} # where is .patient method coming from?
        # self.appointments 
    end
  
  
  end


dr = Doctor.new("Ben")
dr.appointments # this method is coming from where??