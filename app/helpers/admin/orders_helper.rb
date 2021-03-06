module Admin::OrdersHelper
  def order_result_class(order)
    if order.closed?
      if order.position.profit?
        "profit"
      else
        "loss"
      end
    elsif order.opened?
      # no class
    elsif order.expired? || order.deleted?
      "expired"
    end
  end

end
