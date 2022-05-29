class SchedulesController < ApplicationController
  before_action :set_schedules
def index
end

def show
@schedule = Schedule.find(params[:id])
end

def new
  @schedule = Schedule.new()
end

def create
  @schedule = Schedule.new(schedule_params)
  if @schedule.save
    flash[:message] = "スケジュールを登録しました"
    redirect_to schedules_path
  else
    flash.now[:danger] = "スケジュールを登録できませんでした"
    render new_schedule_path
  end
end

def edit
  @schedule = Schedule.find(params[:id])
end

def update
  @schedule = Schedule.find(params[:id])
  if @schedule.update(schedule_params)
    flash[:message] = "スケジュールを更新しました"
    redirect_to schedules_path
  else
    # @schedule = Schedule.find(params[:id])
    flash.now[:danger] = "スケジュールを更新できませんでした"
    render "edit"
  end
end

def destroy
  @schedule = Schedule.find(params[:id])
  if @schedule.destroy
    flash[:message] = "スケジュールを削除しました"
    redirect_to schedules_path
  else
    flash.now[:danger] = "スケジュールを削除できませんでした"
    render schedules_path
  end
end

def set_schedules
@schedules = Schedule.all
end
private
def schedule_params
  params.require(:schedule).permit(:title,:start_date,:finish_date,:full_day,:memo)
end
end
