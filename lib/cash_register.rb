require 'pry'
class CashRegister
attr_accessor :discount, :total
  
@@basket = {}
  def initialize(discount = 20)
    @total = 0
    @discount = 20
  end
  
  def add_item(title, price, quantity = 1)
    @@basket[title] = price
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
