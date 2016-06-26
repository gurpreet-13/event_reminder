class EventsController < ApplicationController

  before_action :load_event, only: [:edit, :update, :destroy]

  def index
    @events = current_user.events
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
    else
    end
    redirect_to events_path, notice: 'Event Successfully Created'
  end

  def edit
  end

  def update
    if @event.update(event_params)
    else
    end
    redirect_to events_path, notice: 'Successfully Updated'
  end

  def destroy
    if @event.destroy
    else
    end
    redirect_to events_path, notice: 'Successfully Deleted'
  end

  protected

  def event_params
    params.require(:event).permit([:title, :date])
  end

  def load_event
    @event = Event.find_by(id: params[:id])
    redirect_to root_path, notice: 'Event not fount' unless @event
  end

end
