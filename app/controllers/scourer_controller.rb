class ScourerController < ApplicationController
  layout 'application', :only => [:home]
  def skiklubben
    @articles = SkiKlubben.get_articles
  end
  def home;end
end
