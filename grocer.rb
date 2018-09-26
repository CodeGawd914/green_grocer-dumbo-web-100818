
def consolidate_cart(cart)
  haxh = {}
  cart.each do |food|
    item = food.keys[0]
    haxh[item] = food.values[0]
    if haxh[item][:count]
      haxh[item][:count] += 1 
    else
      haxh[item][:count] = 1 
    end
  end
  haxh
end

def apply_coupons(cart, coupons)
  haxh = {}
  cart.each do |key,value|
    haxh[key] = value
    coupons.each do |coupon|
      if key == coupon[:item]
        if value[:count] >= coupon[:num]
          value[:count] -= coupon[:num]
          if 
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
