require 'pry'
class Doctor
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.collect do |appt|
     appt.patient
    end.uniq

    # alternate way
    # Patient.all.select do |patient|
    #   patient.doctors.include?(self)
    # end
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
end
