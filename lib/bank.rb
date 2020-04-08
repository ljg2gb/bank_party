class Bank
    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select do |account|
            account.bank == self
        end
    end

    def customers
        customers = accounts.map do |account|
            account.customer.name
        end
        customers.uniq
    end

    def new_account (number, balance, customer)
        Account.new(number, balance, self, customer)
    end

    def oldest_account
        accounts.min_by do |account|
            account.open_year
        end
    end

    def self.most_customers
        all.max_by do |bank|
            bank.customers.length
        end
    end

    def self.customer_count
        count_hash = {}
        Bank.all.each do |bank|
            count_hash[bank.name] = bank.customers.length
        end
        count_hash
    end

    def average_customer_age
        customers = accounts.map do |account|
            account.customer
        end
        unique_customers = customers.uniq
        total_age = unique_customers.reduce do |acc, customer|
            acc + customer.age
        end
        total_age / unique_customers.length
    end

    def self.most_branches
        
    end

end 

