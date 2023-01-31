class Player

attr_accessor :name, :life_points


    def initialize(name_to_save)  #Lifepoints n'est pas à demander :
        @name = name_to_save
        @life_points = 10
    end

    def show_state
    puts " #{@name} dispose de #{@life_points} points de vie"
    end

    def gets_damage(damage_received)
        @life_points = @life_points - damage_received
        if @life_points <= 0
            puts "Le joueur #{@name} a été tué !"               # self.name au lieu de @name
            @dead = true
        end                                                 #sinon c'est l'attaquant qui prend !
    end

    def compute_damage
        return rand (1..6)
    end
   
    def attacks(enemy) 
        puts "le joueur #{@name} attaque le joueur #{enemy.name}"         #ou self.name
        damage = compute_damage
        enemy.gets_damage(damage)
        puts "Il lui inflige #{damage} points de dégât "           # A placer plutôt dans la def gets_damage !
    end
    





end
    # def gets_damage
    #     puts ">"
    #     puts "Tape le chiffre des dégâts"
    #     damage = gets.chomp.to_i
    #     @life_points = 10 -damage
    #     if @life_points =< 0
    #         puts "Le joueur #{@name} a été tué !"
    #     end

# def gets_damage
    #     puts ">"
    #     puts "Tape le chiffre des dégâts"
    #     damage = gets.chomp.to_i
    #     @life_points = 10 -@life_points
    #     if @life_points =< 0
    #         puts "Le joueur #{@name} a été tué !"
    #     end



        #  end

    #player1 = Player.new("josé")
    #player1.gets_damage


