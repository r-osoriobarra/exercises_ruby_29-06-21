#Desafío Cuenta Bancaria - Ejercicio 2
class BankAccount

    attr_accessor :user_name
    attr_reader :number_account, :vip
    
    def initialize(user_name, number_account, vip = 0)
        @user_name = user_name
        @number_account = number_account
        @vip = vip
        raise RangeError, "number_account debe ser de 8 dígitos" if number_account.digits.count != 8
    end

    def vip_number_account
        "#{self.vip}-#{self.number_account}"
    end

end

bank_account = BankAccount.new('User_name',89864512, 0)
puts bank_account.vip_number_account