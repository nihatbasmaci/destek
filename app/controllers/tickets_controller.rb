class TicketsController < ApplicationController
  def index
  	@ticket = Ticket.all
  end

  def create
  	@ticket = Ticket.new(ticket_params)

  	if @ticket.save
  		redirect_to @article
  	else
  		render 'new'
  	end
  end

  def new
  	@ticket = Ticket.new
  end

  def show
  	@ticket = Ticket.find(params[:id])
  end

  def edit
  	@ticket = Ticket.find(params[:id])
  end

  def destroy
  	@ticket = Ticket.find(params[:id])
  	@ticket.destroy
  end

  private
  	def ticket_params
  		params.require(:article).permit(:title, :text)
  	end
end
