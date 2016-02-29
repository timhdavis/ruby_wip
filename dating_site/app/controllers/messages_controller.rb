class MessagesController < ApplicationController
  def create
    @profile = Profile.find(params[:profile_id])

    if @profile.messages.create(message_params)
      redirect_to @profile,
                  notice: 'message was successfully created.'
    else
      redirect_to @profile,
                  alert: 'Error creating message.'
    end
  end

  private
  def message_params
    params.require(:message).permit(:author, :body)
  end
end
