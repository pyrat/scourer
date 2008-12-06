require 'cgi'

xml.instruct!

xml.rss("version" => "2.0", "xmlns:dc" => "http://purl.org/dc/elements/1.1/") do
  xml.channel do

    xml.title       "Skiklubben Føremelding"
    xml.link        ("http://skiklubben.no")
    xml.pubDate     CGI.rfc1123_date Time.now
    xml.description "Føremelding for Bymarka"

    @articles.each do |article|
      xml.item do
        xml.title       article.title.to_s.strip
        xml.link        article.url
        xml.description article.content.to_s.strip
        # need to fix
        xml.pubDate     CGI.rfc1123_date Time.now
        xml.guid        article.url
        xml.author      "Piste Basher Man"
      end
    end

  end
end