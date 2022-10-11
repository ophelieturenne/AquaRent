class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @bookings = Booking.all
  end

  def new
    @material = Material.find(params[:material_id])
    @booking = Booking.new
  end

  def create
  end

  def destroy
  end
end
