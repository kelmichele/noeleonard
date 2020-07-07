class Claim
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  # TYPES = ['Pigment', 'BlindSpots', 'Blurred', 'Blindness', 'Dimming', 'Distorted', 'NightVision', 'OtherRetinal', 'OtherVision']

	attr_accessor :full_name, :phone, :email, :drug, :problems_armd, :problems_pigment, :problems_blind_spots, :problems_blurred, :problems_blindness, :problems_dimming, :problems_distorted, :problems_night_vision, :problems_other_retinal, :problems_other_vision, :content, :honey
  validates_presence_of :full_name
  validates_presence_of :phone
  validates_presence_of :email
  validates_presence_of :drug
  validates_presence_of :content



  def armd
		if problems_armd = "0"
			'eh'
		else 
			'Age-Related Macular Degeneration'
		end
  end 
end
