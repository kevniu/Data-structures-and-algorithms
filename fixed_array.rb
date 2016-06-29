class FixedArray

  def initialize(size)
    @array_size = size
    @array = Array.new(size)
  end

  def get(index)
    raise 'OutOFBoundsException' if index > @array_size - 1 || index < 0
    @array[index]
  end

  def set(index, element)
    raise 'OutOFBoundsException' if index > @array_size - 1 || index < 0
    @array[index] = element
  end

  def size
    return @array_size
  end
end
