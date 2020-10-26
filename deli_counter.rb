def line(customers)
    if customers.empty?
        puts "The line is currently empty."
    else
        result = "The line is currently:"
        customers.each_with_index do |customer, index|
           result << " #{index + 1}." << " #{customer}"
        end
        puts result  
    end
end

def take_a_number(customers, name)
    customers << name 
    puts "Welcome, #{name}. You are number #{customers.index(name) + 1} in line."
end

def now_serving(customers)
    if customers.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{customers[0]}."
        customers.shift
    end
end