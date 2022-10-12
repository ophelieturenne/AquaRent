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
    @material = Material.find(params[:material_id])
    @booking = Booking.new(booking_params)
    @booking.material = @material
    # @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end
end

private
def booking_params
  params.require(:booking).permit(:start_date, :end_date, :material_id)
end
