# frozen_string_literal: true
class RockPaperScissors
  HANDS = ['グー', 'チョキ', 'パー']

  def winner(user_hand, comp_hand)
    case [user_hand, comp_hand]
    when [0, 1], [1, 2], [2, 0] then
      'あなた'
    when [1, 0], [2, 1], [0, 2] then
      'コンピュータ'
    end
  end

  def hands_to_s
    str = '> '.dup
    HANDS.each_with_index { |hand, i| str << "#{i}.#{hand} " }
    str
  end

  def run
    loop do
      puts '「じゃんけん・・・」'
      puts hands_to_s
      user_hand = gets.to_i
      comp_hand = rand(0...HANDS.length)
      puts <<~EOF
          「ぽい！」
          ＊コンピュータ：#{HANDS[comp_hand]}
          ＊あなた：#{HANDS[user_hand]}
          EOF
      if user_hand != comp_hand
        puts "「#{winner(user_hand, comp_hand)}の勝ち！」"
        break
      end
      puts '「アイコでしょ！」'
    end
  end
end

rpc = RockPaperScissors.new
rpc.run
