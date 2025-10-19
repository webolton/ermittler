# frozen_string_literal: true

class TeamsUser < ApplicationRecord
  belongs_to :team
  belongs_to :user
end
