class Tenant < ApplicationRecord
    has_many: apartments through, lease
    has_many: leases
end
