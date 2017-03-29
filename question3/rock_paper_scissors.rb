# frozen_string_literal: true
class RockPaperScissors
  HANDS_RANGE = (0..2)

  def name_of(hand)
    case hand
    when 0 then 'グー'
    when 1 then 'チョキ'
    when 2 then 'パー'
    end
  end

  def set_user_hand
    input_num = gets.to_i
    if HANDS_RANGE.include?(input_num)
      @user_hand = input_num
    else
      false
    end
  end

  def set_comp_hand
    @comp_hand = rand(HANDS_RANGE)
  end

  def draw?
    @user_hand == @comp_hand &&
    !@user_hand.nil? &&
    !@comp_hand.nil?
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
    until winner
      puts '「アイコでしょ！」' if draw?
      puts <<~EOF
          「じゃんけん・・・」
          > 0.グー 1.チョキ 2.パー
          EOF
      set_user_hand || (puts '0, 1, 2 のいずれかを入力してください。'; next)
      set_comp_hand
      puts <<~EOF
          「ぽい！」
          ＊コンピュータ：#{name_of(@comp_hand)}
          ＊あなた：#{name_of(@user_hand)}
          EOF
    end
    puts "「#{winner}の勝ち！」"
  end
end

rpc = RockPaperScissors.new
rpc.run
