class Patient 
    attr_accessor :name, :appointments
    
    def initialize (name)
        @name=name
        @appointments=[]
    end
    
    def add_appointment(appointment)
        appointment.patient=self
        @appointments << appointment 
    end
    
    def doctors
        @appointments.collect do |appt|
        appt.doctor
                            end
    end
end