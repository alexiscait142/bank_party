class Bank
    attr_reader :name, :location

    @@all = []

    def initialize name, location
        @name = name
        @location = location
        @@all << self
    end

    def accounts
        BankAccount.all.select{|bankaccount| bankaccount.bank == self}
    end

    def customers
        self.accounts.map{|account| account.customer}
    end

    def new_account(acct_number, name, customer)
        BankAccount.new()
    end

    def self.all
        @@all
    end
end