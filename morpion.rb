def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" "," "," "," "," "," "," "," "," "]
turn = 0
i = 0
puts "Quel est le nom du premier joueur"
print ">"
name1 = gets.chomp

puts "Quel est le nom du deuxueme joueur"
print ">"
name2 = gets.chomp

while (i != 1 || turn != 10)

  if turn % 2 == 0
    puts name1 + " Ou voulez vous jouez? Choissez un chiffre entre 1 et 9."
    print">"
    x = gets.chomp
    x = x.to_i
    x = x - 1

    if board[x] == " "
      puts name1 + " a joué"
      board[x] = "X"
      display_board(board)
        if board[0] == "X" && board[1] == "X" && board[2] == "X"
          puts "Vous avez gagnez"
          i = 1
        end
        if board[3] == "X" && board[4] == "X" && board[5] == "X"
          puts "Vous avez gagnez"
          i = 1
        end
          if board[6] == "X" && board[7] == "X" && board[8] == "X"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[0] == "X" && board[3] == "X" && board[6] == "X"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[1] == "X" && board[4] == "X" && board[7] == "X"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[2] == "X" && board[5] == "X" && board[8] == "X"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[0] == "X" && board[4] == "X" && board[8] == "X"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[2] == "X" && board[4] == "X" && board[6] == "X"
            puts "Vous avez gagnez"
            i = 1
          end
        else
          puts "mauvaise case"
          turn = turn - 1
        end
  else
    puts name2 + " Ou voulez vous jouez? Choissez un chiffre entre 1 et 9."
    print">"
    x = gets.chomp
    x = x.to_i
    x = x - 1
    if board[x] == " "
        puts name2 + " a joué"
        board[x] = "O"
        display_board(board)
        if board[0] == "O" && board[1] == "O" && board[2] == "O"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[3] == "O" && board[4] == "O" && board[5] == "O"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[6] == "O" && board[7] == "O" && board[8] == "O"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[0] == "O" && board[3] == "O" && board[6] == "O"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[1] == "O" && board[4] == "O" && board[7] == "O"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[2] == "O" && board[5] == "O" && board[8] == "O"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[0] == "O" && board[4] == "O" && board[8] == "O"
            puts "Vous avez gagnez"
            i = 1
          end
          if board[2] == "O" && board[4] == "O" && board[6] == "O"
            puts "Vous avez gagnez"
            i = 1
          end
        else
          puts "mauvaise case"
          turn = turn - 1
      end
end
turn = turn + 1
if turn == 9
  i = 1
  turn = 10
  puts "égalite, tout est remplit"
  puts "Voulez ? Y/N"
  replay= gets.chomp
  	if replay == "Y"
      board = [" "," "," "," "," "," "," "," "," "]
      turn = 0
      i = 0
    end
end
end
