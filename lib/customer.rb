class Customer
    attr_reader :name, :age

    @@all = []

    def initialize name, age
        @name = name
        @age = age
        @@all << self
    end

    def accounts
        BankAccount.all.select{|bankaccount| bankaccount.customer == self}
    end

    def banks
        self.accounts.map{|account| account.bank}
    end

    def new_account(acct_number, balance, bank)
        BankAccount.new(acct_number, balance, bank, self)
    end

    def self.all
        @@all
    end
end