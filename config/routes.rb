ActionController::Routing::Routes.draw do |map|
  map.connect '/:action.xml', :controller => 'scourer'
  map.root :controller => 'scourer', :action => 'home'
end
