class Meal
  attr_accessor :waiter, :customer, :total, :tip

  @@all = []  # collects all meals
  def initialize(waiter, customer, total, tip = 0)
    @waiter = waiter  # starts with waiter, customer, total and tip 
    @customer = customer
    @total = total
    @tip = tip
    @@all << self # pushes all meal instances into @@all
  end

  def self.all  # getter method for @@all
    @@all
  end
end