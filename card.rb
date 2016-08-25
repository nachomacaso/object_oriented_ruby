class Deck
  def initialize(input_options)
    @question = input_options[:question]
    @answer = input_options[:answer]
    @card_used = input_options[:card_used]
    @total_cards = 3
  end

  def remaining_cards
    @total_cards = @total_cards - @card_used
  end
end

class Card < Deck
  def intialize(input_options)
    super(input_options)
  end
end

# trivia_data_1 = {question: "What is the capital of Illinois?", answer: "Springfield"}
# trivia_data_2 = {question: "Is Africa a country or a continent?", answer: "Continent"}
# trivia_data_3 = {question: "Tug of war was once an Olympic event. True or false?", answer: "True"}

deck = Deck.new({question: "What is the capital of Illinois?", answer: "Springfield", card_used: 1}) # deck is an instance of the Deck class
p deck

while deck.remaining_cards > 0
  card = Card.new(deck)
  p card
#   card = deck.draw_card # card is an instance of the Card class
#   puts card.question
#   user_answer = gets.chomp
#   if user_answer.downcase == card.answer.downcase
#     puts "Correct!"
#   else
#     puts "Incorrect!"
#   end
end