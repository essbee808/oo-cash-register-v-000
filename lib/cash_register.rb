require 'pry'
class CashRegister
attr_accessor :discount, :total
  
  def initialize(discount = nil) #=> When you pass in an argument and value is set to nil, that value is the default argument
    @total = 0
    @discount = discount
    @basket = []
  end
  
  def add_item(title, price, quantity = 1)
    @basket[title] = price
    self.total += price * quantity
    
  end
  
  def apply_discount
    if CashRegister.new(discount = 20)
    total_discount = @total * self.discount/100
    @total = @total - total_discount
    return "After the discount, the total comes to $#{@total}."
    
    else
    return "There is no discount to apply."
  end
  end
 
end
