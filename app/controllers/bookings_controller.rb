class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  helper_method :total

  def index
    @bookings = Booking.all
  end

  def new
    @material = Material.find(params[:material_id])
    @booking = Booking.new
  end

  def create
    @material = Material.find(params[:material_id])
    @booking = Booking.new(booking_params)
    @booking.material = @material
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @material = Material.find(params[:material_id])
    @booking = Booking.find(params[:id])

  end

  def update
    @material = Material.find(params[:material_id])
    @booking = Booking.find(params[:id])
    @booking.material = @material
    if @booking.update(booking_params)
      redirect_to bookings_path, notice: "list was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  def total
    total = 0
    @bookings.each do |booking|
      total += booking.material.price
    end
    return total
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :material_id)
  end
end
