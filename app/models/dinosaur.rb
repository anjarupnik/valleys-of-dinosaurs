class Dinosaur < ApplicationRecord

def random_age
 self.age = rand(1..100)
end



  def self.order_by_name
    order(:name)
  end

  def is_baby?
    age < 3
  end
end
