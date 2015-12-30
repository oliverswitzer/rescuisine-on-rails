require 'factory_girl'

FactoryGirl.define do
  factory :restaurant do
    name    "Test Restaurant"
    address "Blvd of Broken Creams"
    phone   "555-555-5555"
  end
end