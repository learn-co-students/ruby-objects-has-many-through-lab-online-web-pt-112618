class Patient
  attr_accessor :name
  @@all=[]


    def initialize(name)

      @name=name
      @@all<<self
    end

    def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
    end
    def appointments
    Appointment.all.select do |appointment1|
        appointment1.patient == self
      end
end
  def doctors

    appointments.map do |appointment1|
        appointment1.doctor
      end
end
def self.all
    @@all
  end

end
