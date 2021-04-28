  
  

def direction
   directions = ["上", "下", "左", "右"]
   puts "-------------------------"
   puts "あっちむいて〜"
   puts "0(上) 1(下) 2(左) 3(右)"
   
   @my_direction = gets.chomp.to_i
   @opponent_direction = rand(4)
   
   puts "ホイ!"
   puts "-------------------------"
   puts "あなた:#{directions[@my_direction]}"
   puts "相手:#{directions[@opponent_direction]}"
 end

def win
     direction
     if @player_direction == @opponent_direction
       puts "あなたの勝ちです"
       return false
       else
         return true
       end
   end
   
     
def lose
     direction
     if @player_direction == @opponent_direction
       puts "あなたの負けです"
       return true
     else
       return true
       end
   end
   


#じゃんけん処理
puts "じゃんけんゲーム"

def guchokipa
  puts "[0]:グー[1]:チョキ:[2]パー"
  
  @player_hand = gets.to_i
  
  @program_hand = rand(3)
  
  jankens = ["グー", "チョキ", "パー"]
  
  puts "あなた:#{jankens[@player_hand]}を出しました, 相手:#{jankens[@program_hand]}を出しました"
  
  
  if @player_hand == @program_hand
    
    puts "あいこで"
   return true
    
    elsif  (@player_hand == 0 && @program_hand == 1) ||
          (@player_hand == 1 && @program_hand == 2) ||
          (@player_hand == 2 && @program_hand == 0)
          win
        else
          lose
        end
      end
        
        next_game = true
    
        
        #じゃんけんを繰り返す
        while next_game do
          next_game = guchokipa
        end
        
        
  