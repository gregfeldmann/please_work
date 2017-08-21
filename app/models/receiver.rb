class Receiver < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :class_name => "Entertainment"

  # Indirect associations

  # Validations

end
