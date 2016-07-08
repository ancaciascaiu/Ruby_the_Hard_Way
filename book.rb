require_relative 'damageable'
require_relative 'item'

class Book < Item
  include Damageable
  attr_reader :length, :author

  def initialize(args = {})
    @length = args[:length]
    @author = args[:author]
    super
  end

end
