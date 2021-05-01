def week(num)
  puts case num
  when 1
    'Понедельник'
  when 2
    'Вторник'
  when 3
    'Среда'
  when 4
    'Четверг'
  when 5
    'Пятница'
  when 6
    'Субота'
  when 7
    'Воскресенье'
  else
    nil.inspect
  end
end

week(8)
