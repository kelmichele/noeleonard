class ClientMailer < ApplicationMailer
	default from: 'noreply-form@attorney-leonard.com'

  def new_client(client)
    @client = client

    mail(to: 'kelli@hsdesignhouse.com', subject: 'Case Evaluation Form From Website')
  end

end
