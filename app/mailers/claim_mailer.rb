class ClaimMailer < ApplicationMailer
	default from: "Elmiron Case Evaluation Form <noreply@attorney-leonard.com>"
	default subject: "Elmiron Form Submission from Website"

  def new_claim(claim)
    @claim = claim

    mail subject: "Elmiron Case Evaluation Form From Website"
    # mail to: "noel@attorney-leonard.com, noel.leonard.urgent@gmail.com, cyndi@attorney-leonard.com, cyndi.office.urgent@gmail.com"
    mail to: "kelli@hsdesignhouse.com"
  end

end
