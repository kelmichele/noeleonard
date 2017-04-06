class ClientMailer < ApplicationMailer
	default from: "Website Case Evaluation Form <noreply@attorney-leonard.com>"
	default subject: "Inquiry from Website Case Evaluation Form"

  def new_client(client)
    @client = client

    mail subject: "Case Evaluation Form From Website"
    mail to: "kelli@hsdesignhouse.com"
  end

end
