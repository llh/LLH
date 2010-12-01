class TeamController < ApplicationController
  
  def index
    @active = 'team'
    @page_title = 'Team Home'
  end
  
  def set_lineup
    @active = 'team'
    @page_title = 'Set Lineup for November 30th, 2010'
  end
  
  def contracts
    @active = 'team'
    @page_title = 'Contracts'
  end
  
end
