games = 0
until games == 1 || games == 3 || games == 5
  puts "何本勝負？(press 1 or 3 or 5)"
  games = gets.chomp.to_i
end
puts "#{games}本勝負を選びました。"
puts #改行

count = 1
win = 0
lose = 0
finish_game = 0

while finish_game < games
  puts "#{count}本目"
  puts "じゃんけん…(press g or c or p)"
  until win + lose == count
    you = gets.chomp
    com = ["g", "c", "p"].sample

    case
    when you == "g"
      you = "グー"
    when you == "c"
      you = "チョキ"
    when you == "p"
      you = "パー"
    end

    case
    when com == "g"
      com = "グー"
    when com == "c"
      com = "チョキ"
    when com == "p"
      com = "パー"
    end

    case
    when ((you == "グー") && (com == "チョキ")) || ((you == "チョキ") && (com == "パー")) || ((you == "パー") && (com == "グー"))
      puts "CPU…#{com}"
      puts "あなた…#{you}"
      puts "勝ち！"
      win += 1
      puts "#{win}勝#{lose}敗"
    when you == com
      puts "CPU…#{com}"
      puts "あなた…#{you}"
      puts "あいこで...(press g or c or p)"
    when ((you == "パー") && (com == "チョキ")) || ((you == "グー") && (com == "パー")) || ((you == "チョキ") && (com == "グー"))
      puts "CPU…#{com}"
      puts "あなた…#{you}"
      puts "負け！"
      lose += 1
      puts "#{win}勝#{lose}敗"
    else
      puts "入力ミス(press g or c or p)"
    end

  end
  puts #改行
  count += 1
  finish_game = win + lose
end

puts "結果"
if win > lose
  puts "#{win}勝#{lose}敗であなたの勝ち"
else
  puts "#{win}勝#{lose}敗であなたの負け"
end



