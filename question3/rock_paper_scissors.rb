# frozen_string_literal: true
class RockPaperScissors
  HANDS = ['グー', 'チョキ', 'パー']

  def set_user_hand
    input_num = gets.to_i
    @user_hand = input_num
  end

  def set_comp_hand
    @comp_hand = rand(0..HANDS.length)
  end

  def winner
    case [@user_hand, @comp_hand]
    when [0, 1], [1, 2], [2, 0] then
      'あなた'
    when [1, 0], [2, 1], [0, 2] then
      'コンピュータ'
    end
  end

  def run
    loop do
      puts '「じゃんけん・・・」'
      print '> '
      HANDS.each_with_index do |hand, i|
        print "#{i}.#{hand} "
      end
      puts
      set_user_hand || (puts '0, 1, 2 のいずれかを入力してください。'; next)
      set_comp_hand
      puts <<~EOF
          「ぽい！」
          ＊コンピュータ：#{HANDS[@comp_hand]}
          ＊あなた：#{HANDS[@user_hand]}
          EOF
      break if winner
      puts '「アイコでしょ！」'
    end
    puts "「#{winner}の勝ち！」"
  end
end

rpc = RockPaperScissors.new
rpc.run
