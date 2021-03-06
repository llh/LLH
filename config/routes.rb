ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "league"
  
  ActionController::Routing::Routes.draw do |map|

    # The priority is based upon order of creation: first created -> highest priority.

    # Keep in mind you can assign values other than :controller and :action

    # Sample of named route:
    #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
    # This route can be invoked with purchase_url(:id => product.id)

    # Sample resource route (maps HTTP verbs to controller actions automatically):
    #   map.resources :products

    # Sample resource route with options:
    #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

    # Sample resource route with sub-resources:
    #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

    # Sample resource route with more complex sub-resources
    #   map.resources :products do |products|
    #     products.resources :comments
    #     products.resources :sales, :collection => { :recent => :get }
    #   end

    # Sample resource route within a namespace:
    #   map.namespace :admin do |admin|
    #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
    #     admin.resources :products
    #   end

    # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
    ##map.root      :controller => "home"

    map.signup                '/signup',                      :controller => 'users',       :action => 'new'
    map.login                 '/login',                       :controller => 'sessions',    :action => 'new'
    map.logout                '/logout',                      :controller => 'sessions',    :action => 'destroy'

    map.league_home           '/league',                      :controller => 'league',      :action => 'index' 
    map.transactions          '/league/transactions',         :controller => 'league',      :action => 'transactions'  
    map.draft_picks           '/league/draft_picks',          :controller => 'league',      :action => 'draft_picks'
    map.salary_caps           '/league/salary_caps',          :controller => 'league',      :action => 'salary_caps'    
    map.team                  '/team',                        :controller => 'team',        :action => 'index'
    map.contracts             '/team/contracts',              :controller => 'team',        :action => 'contracts' 
    map.lineup                '/team/lineup',                 :controller => 'team',        :action => 'lineup' 
    map.scores                '/scores',                      :controller => 'scores',      :action => 'index' 
    map.recap                 '/scores/recap',                :controller => 'scores',      :action => 'recap' 
    map.standings             '/standings/division',          :controller => 'standings',   :action => 'index' 
    map.standings_conf        '/standings/conference',        :controller => 'standings',   :action => 'conference' 
    map.statistics            '/statistics/',                 :controller => 'statistics',  :action => 'index' 
    map.statistics_off        '/statistics/offensive',        :controller => 'statistics',  :action => 'offensive' 
    map.statistics_gol        '/statistics/goalies',          :controller => 'statistics',  :action => 'goaltending' 
    map.statistics_team       '/statistics/team',             :controller => 'statistics',  :action => 'team' 
    map.schedule              '/schedule',                    :controller => 'league',      :action => 'schedule'
    map.profile               '/profile',                     :controller => 'profile',     :action => 'index'  
    map.player_profile        '/players/profile',             :controller => 'players',     :action => 'profile'
    map.player_search         '/players/search',              :controller => 'players',     :action => 'search' 
    map.player_add_drop       '/players/add/drop',            :controller => 'players',     :action => 'add_drop'  
    map.player_trades         '/players/trades',              :controller => 'players',     :action => 'trades' 
    map.rules                 '/league/rules',                :controller => 'league',      :action => 'rules'  

    map.admin                 '/admin/',                      :controller => 'admin',       :action => 'index'
    map.edit_rules            '/admin/edit_rules',            :controller => 'admin',       :action => 'edit_rules'  
    map.edit_standings        '/admin/edit_standings',        :controller => 'standings',   :action => 'edit'  


    # See how all your routes lay out with "rake routes"

    # Install the default routes as the lowest priority.
    # Note: These default routes make all actions in every controller accessible via GET requests. You should
    # consider removing the them or commenting them out if you're using named routes and resources.
    map.connect ':controller/:action/:id'
    map.connect ':controller/:action/:id.:format'
  end
  

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
