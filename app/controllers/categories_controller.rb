class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # search bar
    if params[:query].present?
      @materials = Material.where("name ILIKE ?", "%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @materials = Material.where(category: @category)
    end
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    if params[:query].present?
      @materials = Material.where(category: @category).where("name ILIKE ?", "%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @materials = Material.where(category: @category)
    end
  end
end
