class Client
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  TYPES = ['Auto', 'Motorcycle', '18-Wheeler', 'Other']

	attr_accessor :first_name, :last_name, :phone, :address, :email, :case_type, :content, :honey
  validates_presence_of :name
  # validates_presence_of :last_name
  validates_presence_of :phone
  validates_presence_of :address
  validates_presence_of :email
  validates_presence_of :case_type
  # validates_inclusion_of :case_type, in: => TYPES
  validates_presence_of :content


  def name
    first_name + ' ' + last_name
  end

end
