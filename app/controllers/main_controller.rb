class MainController < ApplicationController
  before_filter :build

  def index
    @events ||= events
    @clubs ||= clubs
  end

  def create
    post = FileUpload.save(params)
    render :index
  end

  private

  def build
    events
    clubs
  end

  def events
    @events ||= Veranstaltung.all
  end

  def clubs
    @clubs ||= Verein.all
  end

end
