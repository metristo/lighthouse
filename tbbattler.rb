require "tbbattler/version"
module Tbbattler
  class Error < StandardError; end
  class Fighters
    def initialize(name, fast_attack, charge_attack, victory, player_char, opp_char)
      @name = name.to_symbol
      @fast_attack = fast_attack
      @charge_attack = charge_attack
      @victory = victory
    end

    def win_taught
      puts victory
    end

    def char_choice
      choice = gets.strip
      if available.include?("#{choice}")
        player_char = choice
      else
        puts "That character is already chosen! Choose again."
        char_choice
      end
    end


    def char_switch
      player_char, opp_char = opp_char, player_char
    end


  end


  
  fighters = { 
    Batman: [battarang, ace, "Batman. Always. Wins."],
    Goku: [punch, kamehameha, "Train a bit more! I can't wait to fight again!"]
  }
