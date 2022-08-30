class CashRegister

  attr_accessor :total
  attr_reader :discount

  def initialize (discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item (title, price, amount = 1)
    @total += price * amount
  end

  def apply_discount
    if @discount == 0
        "There is no discount to apply."
    else
     @total -= (@total * @discount / 100)
     "After the discount, the total comes to $#{@total}."
    end
end


end
