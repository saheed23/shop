class CartController < ApplicationController
before_action :authenticate_user!, except: [:index]  #this will prevent customer from addings to the cart until after sign in or sign up
def add
   id = params[:id]
      # if the cart has already been created, use the existing cart else create a new cart
       if session[:cart] then
          cart = session[:cart]
       else
           session[:cart] = {}
           cart = session[:cart]
      end
    #If the product has already been added to the cart, increment the value else set it to zero
     if cart[id] then
        car[id] = cart[id] + 1
     else
        cart[id] = 1
      end
     redirect_to :action => :index
end #end add method

def clearCart
     session[:cart] = nil
     redirect_to :action => :index
end

def index
    #if there is a cart, pass it to the page for display else an empty value
    if session[:cart] then
        @cart = session[:cart]
   else
       @cart = {}
end
end
end
