class Entertainment < ApplicationRecord
  # Direct associations

  has_many   :recommends,
             :dependent => :destroy

  has_many   :ratings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
