require 'pry' # lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

while  @dead != true    

        puts "Voici l'état de chaque joueur:"
        puts player1.show_state
        puts player2.show_state
        puts "Mais passons maintenant à la phase d'attaque:"
        puts ">"
        player1.attacks(enemy.name)
        break if  @@dead = true             #correctif du bug
        player2.attacks(enemy.name)

end








binding.pry

   #player1 = Player.new("josé")
   #player1.show_state
    #player1.gets_damage