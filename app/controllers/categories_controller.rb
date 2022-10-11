class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # search bar
    if params[:query].present?
      @query = params[:query]
      @categories = Category.where("name LIKE ?", "%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @categories = Category.all
    end
  end

  def show
    @category = Category.find(params[:id])
    @materials = @category.materials
  end

end
