class StandingsController < ApplicationController
  
  def index
    @active = 'standings'
    @page_title = 'Division Standings'
  end
  
  def conference
    @active = 'standings'
    @page_title = 'Conference Standings'
  end
  
end
