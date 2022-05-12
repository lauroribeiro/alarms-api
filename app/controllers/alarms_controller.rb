class AlarmsController < ApplicationController
  before_action :set_alarm, only: %i[ show update destroy ]

  # GET /alarms
  def index
    @alarms = Alarm.order(id: :desc).limit(10)
  end

  # GET /alarms/trigger
  def trigger
    return unless params[:name].present?
    @alarm = Alarm.new(name: params[:name])

    if @alarm.save
      render json: @alarm, status: :created, location: @alarm
    else
      render json: @alarm.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alarms/1
  def destroy
    @alarm.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alarm
      @alarm = Alarm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alarm_params
      params.require(:alarm).permit(:name)
    end
end
