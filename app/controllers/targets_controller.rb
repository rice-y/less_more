class TargetsController < ApplicationController
  def index
    @targets = Target.all
    @expense = Expense.all
    
    # @data = [['食費', @expense], ['通信費', @expense.internet], ['家賃', @expense.water]]
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
