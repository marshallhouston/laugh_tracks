class Comedian < ActiveRecord::Base
  has_many :specials

#As a user, when I visit /comedians I also see the average age for all comedians.
  def average_age
    Comedian.average(:age).round
  end

#As a user, when I visit /comedians I also see the count of specials for each comedian.

  def specific_age(age)
    Comedian.where(params[age])
  end
  
end
