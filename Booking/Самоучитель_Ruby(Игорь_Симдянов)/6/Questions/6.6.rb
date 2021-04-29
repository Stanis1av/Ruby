class Hello
  def initialize(t = Time.now)
    @t = t
  end

  def hello
    time_now = @t.hour * 60 + @t.min

    day = { (360..719).to_a => 'Доброе утро',  (720..1079).to_a => 'Добрый день',
            (1080..1439).to_a => 'Добрый вечер',  (0..359).to_a => 'Доброй ночи' }

    day.each do |time_range, value|
      puts time_range.include?(time_now) ? value : next
    end
  end
end

h = Hello.new
h.hello

# Для подключения и вывода в другом файле: require_relative '6.6.rb'
