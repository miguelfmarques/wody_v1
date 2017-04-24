class Person < ApplicationRecord
  has_one :legal_person, dependent: :destroy
  accepts_nested_attributes_for :legal_person
end
