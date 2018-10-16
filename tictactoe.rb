class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
attr_accessor :value, :pos

  def initialize
    @value = 0
    @pos = pos
  end

  def to_s
    @value.to_s
  end

end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
attr_accessor :board

  def initialize
    @board = [BoardCases.new(),BoardCases.new(),BoardCases.new(),BoardCases.new(),BoardCases.new(),BoardCases.new(),BoardCases.new(),BoardCases.new()]
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
  end

  def to_s
    @board.to_s

  end

  def play
    @player1_plays.each do |x| @board[x].value = "X"
  end
    @player2_plays.each do |x| @board[x].value = "O"
  end
end

  def victory?
    win_comb = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    if (win_comb.include?(@player1_plays.sort))
     'Victoire de #{@player1}'
   elsif (win_comb.include?(@player2_plays.sort)
    'Victoire de #{@player2}'
  else
    nil
  end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?


  def initialize
    #TO DO : doit régler son nom, sa valeur, son état de victoire
  end
end

class Game
  def initialize
    #TO DO : créé 2 joueurs, créé un board
  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end
end
end

Game.new.go
