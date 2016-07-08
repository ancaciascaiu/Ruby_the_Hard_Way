require_relative 'damageable'
require_relative 'item'

class CD < Item
  include Damageable
  attr_reader :runtime, :artist

  def initialize(args ={})
    @runtime = args[:runtime]
    @artist  = args[:artist]
    super
  end

end
