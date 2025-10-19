# frozen_string_literal: true

class User < ApplicationRecord
  has_many :teams_users
  has_many :teams, through: :teams_users
end
