class Appointment


    # doctor is an object 
    attr_accessor :date, :doctor, :patient
    
    def initialize(date, doctor)
      @date = "date"
      @doctor = doctor

      # appointment belongs to a doctor 
      #need a reader and writer 
      doctor.add_appointment(self) #self is the appointment instance
    end
    
end