class EstatesController < ApplicationController
	def new
    @estate = Estate.new
  end

  def create
    @estate = Estate.new(estate_params)

    if verify_recaptcha(model: @estate) && @estate.valid?
      EstateMailer.new_estate(@estate).deliver unless estate_params[:honey].present?
      redirect_to thanks_for_submitting_path, notice: "Your message has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message. All fields are required."
      render :new
    end
  end

  private

    def estate_params
      params.require(:estate).permit(:first_name, :last_name, :phone, :address, :email, :content, :honey)
    end
end
