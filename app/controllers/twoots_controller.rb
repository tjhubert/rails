class TwootsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @twoot = @user.twoots.create(twoot_params)
    redirect_to user_path(@user)
  end

  def destroy
  	@user = User.find(params[:user_id])
    @twoot = @user.twoots.find(params[:id])
    @twoot.destroy
    redirect_to user_path(@user)
  end
 
  private
    def twoot_params
      params.require(:twoot).permit(:body)
    end
end
