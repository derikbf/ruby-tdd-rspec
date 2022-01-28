class CustomersController < ApplicationController
  def index
  end

  def new
    @customer = Customer.new
  end

  def create 
    @customer = Customer.new(customer_params)

    if @costumer.save
      redirect_to customer_path, notice: 'Cliente cadastrado com sucesso!'
    else
      render :new
    end
  end

  def customer_params
    params.require(:customer).permit(:id, :name, :email, :smoker, :phone, :avatar)
  end
end
