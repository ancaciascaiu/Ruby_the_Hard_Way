
require_relative 'damageable'
require_relative 'item'
class BluRay < Item
  include Damageable
  attr_reader :runtime

  def initialize(args = {})
    super
    @runtime = args[:runtime]
  end

end
