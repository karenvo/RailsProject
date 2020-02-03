class Employee < ApplicationRecord
    has_many :appointments
    has_many :employee_service
    has_many :services, through: :employee_service
end
