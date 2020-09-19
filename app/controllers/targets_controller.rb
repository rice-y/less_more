class TargetsController < ApplicationController
  def index
    @targets = Target.all
    @data = [['2019-06-01', 100], ['2019-06-02', 200], ['2019-06-03', 150]]
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
