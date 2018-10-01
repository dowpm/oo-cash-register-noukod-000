class CashRegister
  attr_accessor :total, :discount, :titles, :price

  def initialize(employee_discount = 0)
    @total, @titles = 0, []
    @discount = employee_discount
  end



  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total -= (@discount * @total) / 100.0
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @titles
  end

  def void_last_transaction
    @total -= @price
  end
end
