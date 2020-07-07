class Claim
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  TYPES = ['Pigment', 'BlindSpots', 'Blurred', 'Blindness']
	attr_accessor :full_name, :phone, :email, :problems, :content, :honey
  validates_presence_of :full_name
  validates_presence_of :phone
  validates_presence_of :email
  # validates_presence_of :problems
  validates_presence_of :content
end
