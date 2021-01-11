require 'open-uri'

class NokogiriController < ApplicationController
  def index
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(URI.open('https://nokogiri.org/tutorials/installing_nokogiri.html'))

    # Search for nodes by css
    content = nil
    doc.css('nav ul.menu li a', 'article h2').each do |link|
      content = link.content
    end

    render json: {
      content: content,
      nokogiri_version: Nokogiri::VERSION,
      jets_version: Jets::VERSION,
      ruby_version: RUBY_VERSION,
    }
  end
end
