class Customer
  attr_accessor :name, :age

  @@all = []  # collects all instances of customer
  def initialize(name, age)
    @name = name  # starts with name and age
    @age = age
    @@all << self # pushes all instance into @@all array
  end 

  def self.all  # getter method for @@all
    @@all
  end

  def new_meal(waiter, total, tip) # new meal with waiter, customer, total and tip linked
    meal = Meal.new(waiter, self, total, tip)
  end

  def meals #=> Array of all customer's meals
    Meal.all.select {|meal| meal.customer == self}
  end

  def waiters # array of all waiters customer has had
    meals.map {|name| name.waiter}
  end

end