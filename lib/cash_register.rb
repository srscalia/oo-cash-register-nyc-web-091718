require 'pry'


class CashRegister

  attr_accessor :total, :discount, :quantity

  def initialize(discount = 0)
    @total=0
    @discount = discount
    @items = []
  end



  def add_item(item, price, quantity = 1)
    @last_item = price*quantity
    self.total+=@last_item
    quantity.times do
      items.push(item)
    end
  end

  def apply_discount
    self.total -= total*(@discount/100.0)
    value = @total.to_i
    if discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{value}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @last_item_discounted = @last_item - @last_item*(@discount/100.0)
    self.total -= @last_item_discounted
  end

end
