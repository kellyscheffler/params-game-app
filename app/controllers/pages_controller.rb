class PagesController < ApplicationController
  def name
    @name_param = params[:name].upcase
    if @name_param[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'name.html.erb'
  end

  def guess
    answer = 36
    guess = params[:number].to_i
    if guess > 36
      @message = "You're too high."
    elsif guess < 36
      @message = "You're too low."
    elsif guess == 36
      @message = "You're right."
    end
  end

  def guess_game
    answer = 36
    @guess = params[:guess].to_i
    if @guess > 36
      @message = "You're too high."
    elsif @guess < 36
      @message = "You're too low."
    else
      @message = "You're right."
    end
    render 'guess_game.html.erb'
  end

  def form
    render 'form.html.erb'
  end

  def answer
    answer = 36
    @guess = params[:guess].to_i 
    if @guess > 36
      @message = "You're too high."
    elsif @guess < 36
      @message = "You're too low."
    else
      @message = "You're right."
    end
    render 'answer.html.erb'
  end
end
