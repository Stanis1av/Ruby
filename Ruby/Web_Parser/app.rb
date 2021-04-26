require 'open-uri'

url = 'https://geekjob.ru/vacancies?qs=Ruby'

URI.open(url) { |f|
  f.each_line {|line|
    puts line
  }
}
