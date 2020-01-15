class Tag < ApplicationRecord
    belongs_to :activity, optional: true
end
