class Author < ActiveRecord::Base
  has_many :books
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def loud_first_name
    self.first_name.upcase
  end

  def change_to_me
    self.update!({ first_name: 'Scott', last_name: 'Domes' })
  end
end