class HomeController < ApplicationController
  def index
  	#.where(["schedules.startdate > ?", Time.current])
  	#@chart = Schedule.all
    @schedules = Schedule.all.order('startdate DESC')
    @travels = Travel.all.order('id DESC')
  end
end
