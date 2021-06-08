# frozen_string_literal: true

# root class for all standard ActiveRecord classes of the app
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
