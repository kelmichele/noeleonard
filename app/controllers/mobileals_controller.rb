class MobilealsController < ApplicationController
	def new
    @mobileal = Mobileal.new
  end

  def create
    @mobileal = Mobileal.new(mobileal_params)

    if @mobileal.valid?
      MobilealMailer.new_mobileal(@mobileal).deliver unless mobileal_params[:honey].present?
      redirect_to thanks_path, notice: "Your message has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message. All fields are required."
      render :new
    end
  end

  private

    def mobileal_params
      params.require(:mobileal).permit(:first_name, :last_name, :phone, :address, :email, :content, :honey)
    end
end
