class Pizza
  def initialize (toppings)
    @baked = false
    @slices = 0
    @toppings = toppings
  end

  def bake
    @baked = true
  end

  def cut
    if @baked
    @slices += 2
    end
  end

  def eat
    if @slices >= 1 && @baked
    @slices -= 1
    end
  end
end

# pizza1 = Pizza.new(["cheese","ham","mushrooms"])
# pizza2 = Pizza.new(["pepperoni","bacon","saussage"])
# p pizza1
# p pizza2

# pizza1.cut
# p pizza1
#
# pizza1.bake
# p pizza1
# # puts pizza1.inspect
#
# pizza1.cut
# p pizza1
#
# 4.times do
#   pizza1.cut
# end
#
# p pizza1
#
# pizza1.eat
# p pizza1
