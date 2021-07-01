class Card
    attr_accessor :number, :kind

    def initialize(number, kind)
        if (["C","D","E","T"].include? kind) && ((1..13).include? number)
            @number = number
            @kind = kind
        else
            raise "number o kind no es un argumento válido" 
        end
    end
end

card_deck = Array.new
5.times {|i| Card.new(2,'E')

