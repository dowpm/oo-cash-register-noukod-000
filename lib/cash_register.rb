class CashRegister
  attr_accessor :total, :discount, :titles

  def initialize(employee_discount = 0)
    @total, @titles = 0, []
    @discount = employee_discount
  end

  def add_item(title,price, quantities = 1)
    @total += price * quantities
    quantities.times do
      @titles << title
    end
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total -= (@discount * @total) / 100.0
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @titles
  end
end
