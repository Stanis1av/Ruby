class User

  def set_first_name(first_name)
    @first_name = first_name
  end
  def set_last_name(last_name)
    @last_name = last_name
  end
  def set_patronymic(patronymic)
    @patronymic = patronymic
  end

  def first_name
    @first_name
  end
  def last_name
    @last_name
  end
  def patronymic
    @patronymic
  end
end

user = User.new

user.set_first_name('Иван')
user.set_last_name('Иванов')
user.set_patronymic('Иванович')

puts "#{user.last_name} #{user.first_name} #{user.patronymic}"
