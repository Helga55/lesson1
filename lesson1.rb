require 'date'
class Lesson1
  def sum(val = 0)
    array = val.to_s.split('')

    total_sum = 0
    array.each do |a|
      total_sum += a.to_i
    end

    total_sum
  end

  def age(birthday)
    birth = Date.parse(birthday)
    days = (Date.today - birth).to_i

    "I have lived #{days / 365} years or #{days} days or #{days * 24} hours or \
    #{days * 24 * 60}  minutes or #{days * 24 * 60 * 60} seconds"
  rescue ArgumentError, TypeError
    'Invalid Date Format'
  end

  def name
    user_name       = gets.chomp
    user_surname    = gets.chomp
    user_patronymic = gets.chomp

    "Hello #{user_name} #{user_surname} #{user_patronymic}!"
  end
end
