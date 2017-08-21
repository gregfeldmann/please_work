class Receiver < ApplicationRecord
  # Direct associations

  has_many   :recommends,
             :dependent => :destroy

  belongs_to :user,
             :class_name => "Entertainment"

  # Indirect associations

  # Validations

end
