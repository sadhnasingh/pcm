class ComplainsController < ApplicationController
	def show
		@complain = Complain.find(params[:id])
	end  

  def create
	  @complain = complain.new(complain_params)
	 
	  @complain.save
	  redirect_to @complain
	end
 
	private
	  def complain_params
	    params.require(:complain).permit(:name, :title, :text)
	  end
end
