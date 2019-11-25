class BankAccount
    attr_reader :acct_number, :balance, :bank, :customer

    @@all = []

    def initialize acct_number, balance, bank, customer
        @acct_number = acct_number
        @balance = balance
        @bank = bank
        @customer = customer
        @@all << self
    end

    # def accounts(customer)
    #     BankAccount.all.select{|bankaccount| bankaccount.customer == customer}
    # end

    def self.all
        @@all
    end
end