class Client < ApplicationRecord

	attr_accessor :first_name, :last_name, :phone, :email, :content, :honey

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :phone
  validates_presence_of :email
  validates_presence_of :grapevine

  validates_presence_of :content
  validates_presence_of :honey


  # def name
    # "#{first_name} #{last_name}"
    # Or: first_name + ' ' + last_name
    # Or: [first_name, last_name].join(' ')
  # end
end
