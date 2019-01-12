class Patient
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def doctors
    appointments.collect do |appt|
      appt.doctor
    end.uniq
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end


  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
end
