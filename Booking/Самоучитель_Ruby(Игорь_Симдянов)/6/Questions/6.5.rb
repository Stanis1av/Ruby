require 'date'

def age(dob)
  now = Time.now.utc.to_date
  p now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end

age(Time.new(2000, 12, 31))

