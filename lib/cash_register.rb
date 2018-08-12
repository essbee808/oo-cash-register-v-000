require 'pry'
class CashRegister
attr_accessor :discount, :total
  
  def initialize(discount = nil) #=> When you pass in an argument and value is set to nil, that value is the default argument
    @total = 0
    @discount = discount
    @basket = []
  end
  
  def add_item(title, price, quantity = 1)
    @basket << title
    self.total += price * quantity
    
  end
  
  def apply_discount
    if discount
    
    else
    return "There is no discount to apply."
  end
  end
 
end
