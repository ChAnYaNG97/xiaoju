class Activity < ApplicationRecord
    has_many :attends
    has_many :comments
    private
        def ensure_not_referenced_by_any_attend
            if attends.empty?
                return true
            else
                errors.add(:base, 'Attends present')
                return false
            end
        end
end
