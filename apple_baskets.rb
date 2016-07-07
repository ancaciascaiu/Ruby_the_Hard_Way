class Apple
  attr_reader :weight
  def initialize(args={})
    @weight = args.fetch(:weight, 0)
  end
end

class Basket
  attr_accessor :max_weight, :max_crates, :apples

  def initialize(args)
    @max_weight = args[:max_weight]
    @max_nr_crates = args[:max_nr_apples]
    @apples = args.fetch(:apples, [])
  end

  def current_weight
    total_w = 0
    @apples.each {|apple|  total_w += apple.weight}
    total_w
  end

  def apples_count
    @apples.count
  end

  def add_apple(apple)
    if current_weight + apple.weight > max_weight
      false
    elsif apples_count + 1 > max_nr_apples
      false
    elsif current_weight + apple.weight <= max_weight
      @apples << apple
      true
    elsif apples_count + 1 <= max_nr_apples
      @apples << apple
      true
    end
  end