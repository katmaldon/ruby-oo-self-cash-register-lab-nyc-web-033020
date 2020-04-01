require 'pry'

class CashRegister

  attr_accessor :discount, :total, :last_item


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    #@last_item = @cart[-1]
  end

  def add_item(title, price, qty = 1)
    items = {}
    items[:name] = items
    items[:price] = price
    items[:qty] = qty

    @cart << items
    @total = @total + price * qty
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    end

    @total = @total - @total * discount / 100
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    # item_list = []
    # @cart.each { |item| item_list << items[:name] }
    # item_list
    # !!! getting infinite loop??
  end

  def void_last_transaction
    # @cart = #delete last item from hash
    # @total

    if @cart == []
      @total = 0.0
    end

    @total

  end



end
