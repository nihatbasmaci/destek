class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket
    else
      render 'new'
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])

    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render 'edit'
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
  end

  private
    def ticket_params
      params.require(:ticket).permit(:title, :category, :content)
    end
end
