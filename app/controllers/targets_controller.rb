class TargetsController < ApplicationController
  def index
    
  end
<<<<<<< Updated upstream
=======
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

  
>>>>>>> Stashed changes
end
