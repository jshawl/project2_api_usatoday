class Profile < ActiveRecord::Base
  belongs_to :user
  # without validations, the user will be able to create empty profiles.
  # Is this a bug or a feature?
end
