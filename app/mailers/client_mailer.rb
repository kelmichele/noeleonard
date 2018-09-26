class ClientMailer < ApplicationMailer
	default from: "Website Case Evaluation Form <noreply@attorney-leonard.com>"
	default subject: "Inquiry from Website Case Evaluation Form"

  def new_client(client)
    @client = client

    mail subject: "Case Evaluation Form From Website"
    mail to: "noel@attorney-leonard.com, noel.leonard.urgent@gmail.com, cyndi@attorney-leonard.com, cyndi.office.urgent@gmail.com"
    # mail to: "noel.leonard.urgent@gmail.com, kelli@hsdesignhouse.com, daniel@hsdesignhouse.com"
  end

end
