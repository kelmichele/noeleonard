class ClaimsController < ApplicationController
	def new
    @claim = Claim.new
  end

  def create
    @claim = Claim.new(claim_params)

    if verify_recaptcha(model: @claim) && @claim.valid?
      ClaimMailer.new_claim(@claim).deliver unless claim_params[:honey].present?
      redirect_to elmiron_submission_path, notice: "Your message has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message. All fields are required."
      render :new
    end
  end

  private

  def claim_params
    params.require(:claim).permit(:full_name, :phone, :email, :problems, :content, :honey)
  end
end
