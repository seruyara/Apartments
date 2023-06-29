class Apartment < ApplicationRecord
    has_many: tenants through, lease
    has_many: leases
end
