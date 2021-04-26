require 'open-uri'
require 'nokogiri'
require 'json'

url = 'https://samara.hh.ru/search/vacancy?L_save_area=true&clusters=true&enable_snippets=true&text=Ruby&showClusters=true'
html = URI.open(url)

doc = Nokogiri::HTML(html)
showings = []
doc.css('.vacancy-serp-item').each do |showing|
  title = showing.css("a[data-qa='vacancy-serp__vacancy-title']").text.strip
  compensation = showing.css("span[data-qa='vacancy-serp__vacancy-compensation']").text.strip
  schedule = showing.css("div[data-qa='vacancy-serp__vacancy-work-schedule']").text.strip
  address = showing.css("span[data-qa='vacancy-serp__vacancy-address']").text.strip
  employer = showing.css("a[data-qa='vacancy-serp__vacancy-employer']").text.strip

  showings.push(
    title: title,
    compensation: compensation,
    schedule: schedule,
    address: address,
    employer: employer,
  )
end

puts JSON.pretty_generate(showings)
