# frozen_string_literal: true

require 'faker'

User.destroy_all

50.times do |time|
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
  User.create!(
    first_name:,
    last_name:,
    email: "#{first_name}_#{last_name}@ermittler.test.com",
    oid: SecureRandom.uuid,
    username: "#{first_name.first}#{last_name[0..3]}#{time}02".downcase
  )
end
