class BrandsController < ApplicationController

  # GET /brands
  # GET /brands.json
  def index
    @brands = Brand.alpha
  end

end
