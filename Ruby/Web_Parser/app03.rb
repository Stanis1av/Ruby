require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('https://samara.hh.ru/search/vacancy?L_save_area=true&clusters=true&enable_snippets=true&text=Ruby&showClusters=true')

link = page.link_with(text: 'Junior Ruby разработчик')

page = link.click
puts page

link1 = page.link_with(text: 'Откликнуться')
puts link1

page1 = link1.click
puts page1
