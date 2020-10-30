class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self. all
        @@all
    end

    def appointments
        Appointment.all.select { |appt| appt.patient == self}
    end

    def doctors
        appointments.map do |appt|
            appt.doctor
        end
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

end

