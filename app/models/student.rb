class Student < ApplicationRecord
    validates :name, presence: true
    validates :age, :numericality => {greater_than_or_equal_to: 0}
    belongs_to :instructor
end
