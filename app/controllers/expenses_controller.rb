class ExpensesController < ApplicationController
  def create
    @expense = Expense.new(expense_params)
      if @expense.save
        redirect_to root_path
      else
        render :new
      end 
   end
end




private

def expense_params
  params.permit(:internet, :house_rent, :cell_phone, :food, :gas, :water, :electric)

end
