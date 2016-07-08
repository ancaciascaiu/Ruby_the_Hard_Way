require_relative 'damageable'
require_relative 'item'
class DVD < Item
  include Damageable
  attr_reader :runtime

  def initialize(args ={})
    @runtime = args[:runtime]
    super
  end

end
