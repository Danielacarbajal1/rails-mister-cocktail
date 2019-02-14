class DosesController < ApplicationController

  def show
    @dose = Dose.find(params[:id])
  end

  def new
    @dose = Dose.new
  end

  def index
    @doses = Dose.all
  end

  def destroy
    @dose.destroy
    redirect_to doses_url, notice: 'Dose was successfully destroyed.'
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

end
