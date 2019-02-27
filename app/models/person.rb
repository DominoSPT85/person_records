class Person < ApplicationRecord
  # Assoc



  # Validations
  validates :age, numericality: {
    less_than_or_equal_to: 150
  }

  validates :alive, inclusion: {
    in: w% ( true, false ),
    message: "%{value} is invalid"
  }

  validates :name, :age, :alive, :gender, presence: true

  validates :name, uniqueness: true

  validates :hair_color, :eye_color, allow_blank: true


  # Methods

    # class method
    def self.order_by_age
      order(:age)
    end


    # instance method
    #callback
    before_save :set_alive

    def set_alive
      self.alive = true
    end


end
