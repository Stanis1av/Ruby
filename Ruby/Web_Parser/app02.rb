require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('https://geekjob.ru/vacancies?qs=Ruby')

puts page.at('.serp-list').inner_html.strip

# require 'mechanize'

# mechanize = Mechanize.new

# page = mechanize.get('https://geekjob.ru/vacancies?qs=Ruby')

# link = page.link_with(class: 'vacancy-name')
# puts link
