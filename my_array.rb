class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.length
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.select(&:odd?)
  end

  def multiple_to_three
    @array.select { |a| (a % 3).zero? }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |a| a / 10.0 }
  end

  def chars
    letters = @array.each.select { |a| a.between?(1, 26) }
    letters.map { |a| (a + 'a'.ord - 1).chr.to_sym }
  end

  def switch
    max_i = @array.index(@array.max)
    min_i = @array.index(@array.min)
    @array[min_i], @array[max_i] = @array[max_i], @array[min_i]

    @array
  end

  def before_min
    min = @array.min
    @array.select { |a| a < min }
  end

  def three_smallest
    @array.sort.select { |a| a < 4 }
  end
end
