class MobilealMailer < ApplicationMailer
	default from: "Mobile Case Form from Website <noreply@attorney-leonard.com>"
	default subject: "Mobile Case Inquiry from Website"

  def new_mobileal(mobileal)
    @mobileal = mobileal

    mail subject: "Mobile Case Evaluation Form From Website"
    # mail to: "kelli@hsdesignhouse.com"
    mail to: "noel@attorney-leonard.com, noel.leonard.urgent@gmail.com, cyndi@attorney-leonard.com"
  end
end
