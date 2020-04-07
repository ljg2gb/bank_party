class Customer
   
    attr_reader :name

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select do |account|
            account.customer == self
        end
    end

    def banks
        banks = accounts.map do |account|
            account.bank.name
        end
        banks.uniq
    end

    def new_account (number, balance, bank)
        Account.new(number, balance, bank, self)
    end

    def self.average_number_of_accounts
        total_accounts = Account.all.length
        total_customers = Customer.all.length
        total_accounts / total_customers
    end
end