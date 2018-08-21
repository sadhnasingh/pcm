class ContactadminsController < ApplicationController
	def index
    @contactadmins = Contactadmin.all
  end
 
  def show
    @contactadmin = Contactadmin.find(params[:id])
  end
 
  def new
    @contactadmin = Contactadmin.new
  end
 
  def edit
    @contactadmin = Contactadmin.find(params[:id])
  end
 
  def create
    @contactadmin = Contactadmin.new(contactadmin_params)
 
    if @contactadmin.save
      redirect_to @contactadmin
    else
      render 'new'
    end
  end
 
  def update
    @contactadmin = Contactadmin.find(params[:id])
 
    if @contactadmin.update(contactadmin_params)
      redirect_to @contactadmin
    else
      render 'edit'
    end
  end
 
  def destroy
    @contactadmin = Contactadmin.find(params[:id])
    @contactadmin.destroy
 
    redirect_to contactadmins_path
  end
 
  private
    def contactadmin_params
      params.require(:contactadmin).permit(:name, :title, :text)
    end
end




