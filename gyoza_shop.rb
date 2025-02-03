

class GyozaOrder

  def initialize  
    @order = []
    @menu = ["pork gyoza", "vegetable gyoza", "chicken gyoza", "fried rice", "soda", "beer"]
  end

  def add_item(item)
    
    if @menu.include?(item)
    @order.push(item)
    # puts @order
      puts "#{item} has been added to your order."
    else 
      puts "Not in our menu, sorry!"
    end
  end

  def view_order
    if @order.empty?
      #take you back to add_item
      puts "add to order!"
    else
      puts "Your current order: #{@order.join(", ")}"
    end
  end

  def update_item
   puts "What would like to do?"
    puts "--type 'add' to add new food item"
    puts "--type 'remove' to add remove a food item"
    puts "--type 'done' to put your order in!"

    choice = gets.chomp.downcase

    case choice
    when 'add'
      puts "What would you like?"
      new_item = gets.chomp.downcase
        if @menu.include?(new_item)
          @order.push(new_item)
           puts "#{new_item} has been added to your order."
         else 
          puts "Not in our menu, sorry!"
        end
      when 'remove'
        puts "What would like to remove?"
        delete_item = gets.chomp.downcase
        if @order.include?(delete_item)
          @order.delete(delete_item)
          puts "#{delete_item} has been removed."
        else
          puts "Sorry, its not in your order."
        end
      when 'done'
        puts "Thank you! and your order is in!"

      else
        puts "Sayonara"
      end
  end

end

customer_order = GyozaOrder.new


puts "Welcome!"

puts "GYOZA MENU" 

puts "__Pork Gyoza"
puts "__Chicken Gyoza"
puts "__Vegetable Gyoza"
puts "__Fried rice"
puts "__Soda"
puts "__Beer"
puts "*gyoza comes in 6 pieces"

#adding order to the @order array
# food = GyozaOrder.new
# puts food.add_item(order)
loop do
puts "What would you like to order? (if finished type: done)"
order = gets.chomp.downcase
# puts order

break if order ==  "done"
customer_order.add_item(order)
end

puts customer_order.view_order

#update order
puts "Would like to update your order?(Yes or No)"
update = gets.chomp.downcase
#puts update
if update == "yes"
customer_order.update_item
else
  puts "Thank you for your order!"
end
