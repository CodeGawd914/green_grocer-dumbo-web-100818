
def consolidate_cart(cart)
  haxh = {}
  cart.each do |food|
    item = food.keys[0]
    haxh[item] = food.values[0}
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
