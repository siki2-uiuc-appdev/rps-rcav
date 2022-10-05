class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def play_rock
  
   index = rand(3)

   moves = ["rock", "paper", "scissors"] 

   @comp_move = moves.at(index)

   if @comp_move == "rock" 
    @outcome = "tied" 
   elsif @comp_move == "paper"
    @outcome = "lost" 
   elsif @comp_move == "scissors" 
    @outcome = "won"
   end

    render({ :template => "game_templates/rock.html.erb" })
  end
  
  def play_paper
    
    render({ :template => "game_templates/paper.html.erb" })
  end

  def play_scissors
    render({ :template => "game_templates/scissors.html.erb"})
  end
end
