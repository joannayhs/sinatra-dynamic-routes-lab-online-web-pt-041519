require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
 
  get "/reversename/:name" do 
    name = params[:name]
    name.reverse 
  end

  get "/square/:number" do 
    num = params[:number].to_i 
    "#{num*num}" 
  end 
  
  get "/say/:number/:phrase" do 
    num = params[:number].to_i 
    phrase = params[:phrase]
    answer = ''
    num.times do 
      answer += phrase 
    end 
    answer
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    words = [] 
    words << params[:word1]
    words << params[:word2]
    words << params[:word3]
    words << params[:word4]
    words << params[:word5]
    
    words.join(" ") + "."
  end 

  get "/:operation/:number1/:number2" do 
    op = params[:operation] 
    num1 = params[:number1].to_i 
    num2 = params[:number2].to_i 
    
    if op == "add" 
      "#{num1 + num2}"
    elsif op == "subtract" 
      "#{num1 - num2}"
    elsif op == "multiply"
      "#{num1 * num2}"
    elsif op == "divide"
      "#{num1 / num2}"
    end 
    
  end 
end