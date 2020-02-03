class Service < ApplicationRecord
    has_many :employee_service
    has_many :employee, through: :employee_service
end
