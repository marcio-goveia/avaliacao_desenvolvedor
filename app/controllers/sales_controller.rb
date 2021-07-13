class SalesController < ApplicationController
  before_action :check_file_presence, only: [:import]
  # GET /sales or /sales.json
  def index
    @sales = Sale.all
    @total_sale = Sale.total_sale
  end

  def import
    csv_file = params[:file]
    Sale.import(csv_file)

    redirect_to root_url, notice: "Sales successfully imported!"
  end

  private
  def check_file_presence
    if params[:file].nil?
      redirect_to root_url, notice: "A file must be selected!"
    end
  end
end
