class EstateMailer < ApplicationMailer
	default from: "Wills, Trusts, Estates Case Form from Website <noreply@attorney-leonard.com>"
	default subject: "Wills, Trusts, Estates Case Inquiry from Website"

  def new_estate(estate)
    @estate = estate

    mail subject: "Wills, Trusts, Estates Case Evaluation Form From Website"
    # mail to: "kelli@hsdesignhouse.com"
    mail to: "noel@attorney-leonard.com, noel.leonard.urgent@gmail.com, cyndi@attorney-leonard.com, cyndi.office.urgent@gmail.com"
  end
end
