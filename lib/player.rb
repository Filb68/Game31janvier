class Player

attr_accessor :name, :life_points


    def initialize(name_to_save)  
        @name = name_to_save
        @life_points = 10
    end

# -------------------   Affichage des points de vie  ------------------------

    def show_state
    puts " #{@name} dispose de #{@life_points} points de vie"
    end

# -------------------   Dommages lors d'une attaque  ------------------------
    
    def gets_damage(damage_received)
        @life_points = @life_points - damage_received
        if @life_points <= 0
            puts "Le joueur #{@name} a été tué !"               
            @dead = true
            exit
        end                                                 
    end

# -------------------   Lancer de dés aléatoire pour définir le dommage ------------------------

    def compute_damage
        return rand (1..6)
    end
   
# -------------------   Attaque d'un des joueurs  ------------------------

    def attacks(enemy) 
        puts "le joueur #{@name} attaque le joueur #{enemy.name}"         #ou self.name
        damage = compute_damage
        enemy.gets_damage(damage)
        puts "Il lui inflige #{damage} points de dégât "           # A placer plutôt dans la def gets_damage !
    end
    





end
   
    #player1 = Player.new("josé")
    #player1.gets_damage


