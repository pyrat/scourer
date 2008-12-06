require 'scrapist/lib/base'

module SkiKlubben
  extend self
  def get_articles
    sc = Scraper.new(
    :domain => 'http://www.skiklubben.no/',
    :item_address_selector => "a.contentpagetitle"
    )

    title = sc.add_attribute(:name => 'title', :selector => "td.contentheading")
    date = sc.add_attribute(:name =>  'date', :selector => "td.createdate")
    content = sc.add_attribute(:name => 'content', :selector => 'div#ja-content:nth-child(1):nth-child(1):nth-child(1)')
    ski_conditions = sc.add_index(:path => "/index.php?option=com_content&task=blogcategory&id=39&Itemid=111")
    ski_conditions.collect_items
  end

end


