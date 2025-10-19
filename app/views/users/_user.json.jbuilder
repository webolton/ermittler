# frozen_string_literal: true

json.extract! user, :id, :first_name, :last_name, :oid, :email, :username, :created_at, :updated_at
json.url user_url(user, format: :json)
