#require('./pizza')
require_relative('pizza')

class Pizzeria

  

  def initialize
    @open = false
    @stock = 0
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def order (toppings)
    if @stock < 1 || @open == false
      return nil
    end
      new_pizza = Pizza.new(toppings)
      new_pizza.bake
      4.times do
        new_pizza.cut
      end
      return new_pizza
  end

  def restock
    if @open == false
    @stock +=5
    end
  end
end

pizzeria1 = Pizzeria.new
p pizzeria1

pizzeria1.restock

pizzeria1.open
p pizzeria1

my_pizza = pizzeria1.order(['cheese','mushrooms','ham'])
p my_pizza
