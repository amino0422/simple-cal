class EventsController < ApplicationController
  before_action :set_event, only: [:show, :destroy, :edit, :update]
  before_action :move_to_index, except: [:index, :show]

  def index
    @events = Event.includes(:user)
    @event = Event.new
  end
  
  def new
    @event = Event.new
  end

  def show
  end

  def create
    Event.create(event_params)
    redirect_to events_path
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :start, :content).merge(user_id: current_user.id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end