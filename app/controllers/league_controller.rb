class LeagueController < ApplicationController
  
  def index
    @active = 'league'
    @page_title = 'League Home'
  end
  
  def transactions
    @active = 'league'
    @page_title = 'Transactions'
  end
  
  def rules
    @active = 'Rules'
    @page_title = 'Rules'
  end
  
  def draft_picks
    @active = 'league'
    @page_title = 'Draft Picks'
  end
  
  def salary_caps
    @active = 'league'
    @page_title = 'Salary Caps'
  end
  
end
