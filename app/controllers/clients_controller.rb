class ClientsController < ApplicationController
	def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    if @client.valid?
      ClientMailer.new_client(@client).deliver unless client_params[:honey].present?
      redirect_to thank_you_path, notice: "Your message has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message. All fields are required."
      render :new
    end
  end

  private

    def client_params
      params.require(:client).permit(:first_name, :last_name, :phone, :address, :email, :case_type, :content, :honey)
    end
end
