class Mobileal
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

	attr_accessor :first_name, :last_name, :phone, :address, :email, :content, :honey
  validates_presence_of :name
  validates_presence_of :phone
  validates_presence_of :address
  validates_presence_of :email
  validates_presence_of :content

  def name
    first_name + ' ' + last_name
  end

end
