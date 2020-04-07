class CashRegister

  attr_accessor :total
  attr_reader :discount
  attr_reader :items


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, qty=1)
    qty.times { @items << item }
    @total += price * qty
    @last_transaction = price * qty
  end

  def apply_discount
    if @discount == 0
     return "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
