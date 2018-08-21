class ReportsController < ApplicationController
	
	 def create
    @product = Product.find(params[:product_id])
    @report = @product.reports.create(report_params)
    redirect_to product_path(@product)
  end
 
  private
    def report_params
      params.require(:report).permit(:Name, :body)
    end
end
