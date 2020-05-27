















# require( 'pg' )
# require_relative("../db/sql_runner.rb")
# require_relative("./pizza_order")


# class Customer
#   attr_reader :id, :first_name, :last_name
#   def initialize( options )
#     @id = options['id'].to_i if options['id']
#     @first_name = options['first_name']
#     @last_name = options['last_name']
#   end

#   def save()
#     sql = "INSERT INTO customers
#     (
#       first_name,
#       last_name
#     )
#     VALUES
#     (
#       $1, $2
#     )
#     RETURNING id"
#     values = [@first_name, @last_name]
#     result = SqlRunner.run(sql, values)
#     @id = result[0]['id'].to_i
#   end

#   def self.delete_all()
#     sql = "DELETE FROM customers"
#     SqlRunner.run(sql)
#   end

#   def self.all()
#     sql = "SELECT * FROM customers"
#     customers = SqlRunner.run(sql)
#     return customers.map { |customer| Customer.new(customer)}
#   end

#   def pizza_orders()
#     sql = "SELECT * FROM pizza_orders WHERE customer_id = $1"
#     values = [@id]
#     pizza_orders = SqlRunner.run(sql, values)
#     return pizza_orders.map { |pizza_order| PizzaOrder.new (pizza_order)}
#   end

# end