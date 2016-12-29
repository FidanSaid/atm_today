class AtmMach < ActiveRecord::Base
     geocoded_by :address
   after_validation :geocode
    has_many :transactions
   # reverse_geocoded_by :latitude, :longitude, :address => :atm_machine
    #after_validation :reverse_geocode
   #  validates :address, :presence => true
end
  def show
    session[:atm_no] = @atm_machine.id
  end
  def sort
    scope :sort, -> { order(id: :asc) }
end
