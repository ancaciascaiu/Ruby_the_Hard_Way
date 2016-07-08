require_relative 'damageable'
require_relative 'library'

class MediaKiosk < Library
  include Damageable
end
