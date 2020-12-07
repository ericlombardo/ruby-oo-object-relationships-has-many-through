class Waiter
  attr_accessor :name, :years_of_experience

  @@all = []  # collects all waiter instances
  def initialize(name, years_of_experience)
    @name = name  # starts with name and years_of_experience
    @years_of_experience = years_of_experience
    @@all << self # pushes all instance into @@all array
  end

  def self.all  # getter method for @@all
    @@all
  end

  def new_meal(customer, total, tip)  # new meal with waiter, customer, total and tip linked
    meal = Meal.new(self, customer, total, tip)
  end

  def meals #=> array of all meals waiter has served
    Meal.all.select {|meal| meal.waiter == self}
  end

  def best_tipper #=> customer name of best tipper
    best_tipper = meals.max do |meal_a, meal_b| # finds instance of highest tipper 
      meal_a.tip <=> meal_b.tip # used lesson to see how to compare tip without putting
    end                         # tips into a seperate array.
    best_tipper.customer  #=> instance of customer that tipped best 

  end
end