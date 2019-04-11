class Appointment < ActiveRecord::Base
 belongs_to :patient
 belongs_to :doctor

 def date_and_time
   self.appointment_datetime.to_formatted_s(:long).split(" ").insert(3, "at").join(" ")
 end
end
