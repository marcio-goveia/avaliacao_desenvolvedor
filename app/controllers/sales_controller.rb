class SalesController < ApplicationController

  # GET /sales or /sales.json
  def index
    @sales = Sale.all
  end

  def import
  end
end
