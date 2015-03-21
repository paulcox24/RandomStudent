class WinnersController < ApplicationController
  def index
  end

  def winner
    @pool = Student.where(wins: 0).ids
    session[:absent] ||= []
    @pool -= session[:absent]
    @winner_id = @pool.shuffle.shuffle.shuffle.sample
    if @winner_id.nil?
      @none = "No one is here"
    else
      @winner = Student.find(@winner_id)
      if @winner.nil?
        @none = "Everyone has won"
      end  
    end
  end

  def present
    @winner = Student.find(params[:id])
    @here = params[:here]
    if @here == 'y'
      @winner.wins += 1
      @winner.save
      redirect_to root_path
    elsif @here = 'n'
      session[:absent] ||= []
      session[:absent] += [@winner.id]
      redirect_to winner_path
    end
  end

end
