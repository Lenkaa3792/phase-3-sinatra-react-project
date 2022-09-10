class Bus <ActiveRecord::Base
    has_many :passenger
    has_many :route, through: :passenger
    belongs_to :route
end 