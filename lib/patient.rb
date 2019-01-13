class Patient
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end
  
  def appointments
    Appointment.all.select do |appointments|
      appointments.patient == self
    end
  end
  
  def doctors
    appointments.map do |appointments|
      appointments.doctor 
    end
  end
  
end