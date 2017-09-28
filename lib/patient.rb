class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appt_obj)
    self.appointments << appt_obj
    appt_obj.patient = self
  end

  def doctors
    self.appointments.collect { |appointment| appointment.doctor }
  end

end
