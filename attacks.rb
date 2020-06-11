class Attacks
    attr_reader :fast_attack, :charge_attack
    def initialize (options)
        @options = options
        @fast_attack = fast_attack
        @charge_attack = charge_attack
    end

    fa = { 
        [:move => "punch", :text => "#{player_char.name}\'s balled fist goes flying, aiming for #{opp_char.name}\'s jaw", :damage => low_damage_calc],
        [:move => "battarang", :text => "In the blink of an eye, #{player_char.name} hurls a battarang towards #{opp_char.name}",  :damage => low_damage_calc]
    }

    ca = { 
        [:move => "kamehameha", :text => "Power surges around #{player_char}\'s body, concetrating in their palms before being launched at #{opp_char}",  :damage => high_damage_calc]
        [:move => "ace", :text => "#{player_char} whistles, calling Ace the Bat-Hound! He lunges for #{opp_char}\'s soft flesh",  :damage => high_damage_calc]
    }


    def fast_attack(player_char)
        low_damage_calc
        opp_char.hp! - id
        update_hp(new_hp)
        attack("+")
    end

    def charge_attack(player_char)
        high_damage_calc
        opp_char.hp! - id
        attack("-")
    end


    
    def low_damage_calc
        id = rand(6)
        if id < 2 
            puts "A pitiful attack..."
            id
        elsif id > 4
            puts "A critical hit!"
            id.to_i + 1
        else
            id
        end
    end


    def high_damage_calc
        id = rand(4...10)
        if id < 6 
            puts "Not very impressive..."
            id
        elsif id > 9
            puts "Truly magnificient"
            id.to_i + 1
        else
            id
        end
    end
   



