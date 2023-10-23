module calculator
 export add,substract,multiply,divide,gc_content

#Function to subtract two number
 function subtract(a,b)
  return a-b
  end

#function to divide two numbers
 function divide(a,b)
         if b==0
                 println("Division by Zero not allowed.Enter a valid number")
                 end
                 return a/b
         end
#function to multiply two number
 function multiply(a,b)
        return a*b
 end
#Function to add two numbers
 function add(a,b)
         return a+b
 end
#function to calculate GC content percentage
 function gc_content(dna_sequence)
         total_content=length(dna_sequence)
        gc_count=count(c-> c in "GC", dna_sequence)
        return gc_count/total_content*100
 end
end  


using. calculator
println("Enter two valid numbers and i will give you results")
user_value1=readline("Enter first number")
user_value2=readline("Enter the second number and I will give you the results")
user_value1=parse(Number,user_value1)
user_value2=parse(Number,user_value2)
addition=calculator.add(user_value1,user_value2)
multiplcation=calculator.multiply(user_value1,user_value2)
division=calculator.divide(user_value1,user_value2)
subtraction=calculator.subtract(user_value1,user_value2)
 println("addition=$addition")
 println("division=$division")
 println("subtraction=$subtraction")
 println("multiplication=$multiplication")

dna_sequence="GCTCTGTGCATGCATCGTAGCTTACCCCCGGGGGATTCCC"
GC=calculator.gc_content(dna_sequence)
    println("GC is  $GC percent")