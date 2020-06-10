class PendingsController < ApplicationController
	before_action :authenticate_user!
	def new 
		redirect_back fallback_location: root_path
	end
	def create
		@pending = Pending.new(pending_params)
	end

	def destroy
		@pending = Pending.find(params[:id])
		@pending.destroy
		@pending.save
		redirect_back fallback_location: root_path
	end

	def pending_params
		params.require(:pending).permit(:name, :email, :user_id)
	end
end
