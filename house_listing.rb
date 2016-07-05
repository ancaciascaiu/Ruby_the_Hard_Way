class HouseListing
  attr_reader :address, :asking_price, :bedroom_count, :bathroom_count, :square_footage, :listing_type, :listing_id, :year_built

  def initialize(add, asking_pr, sq_footage, list_type, list_id, year_built, bedroom_ct=3, bathroom_ct=2, active=true, occupied=true)
    @address = add
    @asking_price = asking_pr
    @square_footage = sq_footage
    @listing_type = list_type
    @listing_id = list_id
    @year_built = year_built
    @bedroom_count = bedroom_ct
    @bathroom_count = bathroom_ct
    @active = active
    @occupied = occupied
  end

  def active?
    @active
  end

  def occupied?
    @occupied
  end
end
