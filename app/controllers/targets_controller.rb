class TargetsController < ApplicationController
  def index
    @targets = Target.all
    @expense = Expense.all
    
    @data = [['食費', 1000], ['通信費', 800], ['家賃', 8000]]
  end

  def create
    @target = Target.new(target_params)
      if @target.save
        redirect_to root_path
      else
        render :new
      end 
   end



  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end


  private

  def target_params
    params.permit(:image, :name, :text, :price, :deadline)
  end

  

end
