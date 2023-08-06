class SupermarketsController < ApplicationController
  def index
    @supermarkets = Supermarket.all
    render :index
  end

  def show
    @supermarket = Supermarket.find_by(id: params[:id])
    render :show
  end

  def create
    @supermarket = Supermarket.new(
      item: params[:item],
      invetory: params[:invetory],
      sold: params[:sold],
      price: params[:price],
      cost: params[:cost]
    )
    @supermarket.save
    render :show
  end

  def update
    @supermarket = Supermarket.find_by(id: params[:id])
    @supermarket.item = params[:item]  || @supermarket.item
    @supermarket.invetory = params[:invetory]  || @supermarket.invetory
    @supermarket.sold = params[:sold]  || @supermarket.sold
    @supermarket.price = params[:price]  || @supermarket.price
    @supermarket.cost = params[:cost]  || @supermarket.cost
    @supermarket.save
    render :show
  end

  def destroy
    @supermarket = Supermarket.find_by(id: params[:id])
    @supermarket.destroy
    render json: {message:"item removed"}
  end
end



