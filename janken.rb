# require 'byebug'
#プレイヤーclassを定義する
# コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作
class Player
  def hand
      puts "数字を入力してください。\n0:グー\n1:チョキ\n2:パー"
      player_hand = gets.chomp
     if player_hand == "0" || player_hand == "1" || player_hand == "2"
      player_hand = player_hand.to_i
     else
     puts "無効な値です。0-2の数値を入力して下さい。"
     return hand
     end
   end
 end

class Enemy
  def hand
     random = Random.new
     enemy_hand = random.rand(3)
   end
end
 
class Janken
  def pon(player_hand,enemy_hand)
     hands = [ "グー","チョキ","パー"]
     
     # pon(player_hand, enemy_hand)
  puts "あなたの手:#{hands[player_hand]}, 相手の手:#{hands[enemy_hand]}"
     result = (player_hand - enemy_hand + 3) % 3
         if  result == 2
             puts "あなたの勝ちです。"
         elsif result == 1
             puts "あなたの負けです。"
         else 
             puts "あいこで。。。"
             player = Player.new
             enemy = Enemy.new
             janken = Janken.new
             janken.pon(player.hand, enemy.hand)  
         end
  end
end
     # 下記の記述で、ジャンケンメソッドが起動される
 player = Player.new
 enemy = Enemy.new
 janken = Janken.new

 # 下記の記述で、ジャンケンメソッドが起動される
 janken.pon(player.hand, enemy.hand)