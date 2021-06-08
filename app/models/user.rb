# Regular user ActiveRecord class with devise additions
class User < ApplicationRecord
  DEVISE_STRATEGIES = %i[
    confirmable
    database_authenticatable
    invitable
    recoverable
    rememberable
    trackable
    validatable
  ].freeze

  devise(*DEVISE_STRATEGIES)
end
