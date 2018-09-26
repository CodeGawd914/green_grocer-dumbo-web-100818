require 'pry'
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
    coupons.each do |coupon|
      if  cart[coupon[:item]] && cart[coupon[:item]][:count] >= coupon[:num]
          cart[coupon[:item]][:count] -= coupon[:num]
         if cart[coupon[:item] + " W/COUPON"]
           cart[coupon[:item] + " W/COUPON"][:count] += 1 
         else
           cart[coupon[:item] + " W/COUPON"] = {
             :price => coupon[:cost],
             :clearance => cart[coupon[:item]][:clearance],
             :count => 1
           }
          end
        end
      end
    return cart
  end


def apply_clearance(cart)
  cart. each do |key,value|
    if value[:clearance] == true
      value[:price] = (value[:price]*0.8).round(2)
    end
  end
end

def checkout(cart, coupons)
  
end
