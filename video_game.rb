require_relative 'damageable'
require_relative 'item'

class VideoGame < Item
  include Damageable
  attr_reader :console

  def initialize(args = {})
    @console = args[:console]
    super
  end

end
