class ExpensesController < ApplicationController
  def create
    @target = Target.new(target_params)
      if @target.save
        redirect_to root_path
      else
        render :new
      end 
   end
end
