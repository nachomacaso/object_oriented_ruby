class CreditCard
  def initialize
    @card_number = "3458 2938 2938 2938"
  end

  def card_number
    "#{protected_card_number}"
  end

private
  def protected_card_number
    last_four = @card_number[-4..-1]
    "XXXX XXXX XXXX #{last_four}"
  end
end

card = CreditCard.new
card.card_number

