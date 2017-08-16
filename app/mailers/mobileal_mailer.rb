class MobilealMailer < ApplicationMailer
	default from: "Mobile Case Form from Website <noreply@attorney-leonard.com>"
	default subject: "Mobile Case Inquiry from Website"

  def new_mobileal(mobileal)
    @mobileal = mobileal

    mail subject: "Mobile Case Evaluation Form From Website"
    mail to: "kelli@hsdesignhouse.com"
  end
end
