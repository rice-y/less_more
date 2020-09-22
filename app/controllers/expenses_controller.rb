class ExpensesController < ApplicationController
  def create
    @expense = Expense.new(target_params)
      if @expense.save
        redirect_to root_path
      else
        render :new
      end 
   end
end
