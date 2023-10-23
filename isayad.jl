module calculator
 export add,substract,multiply,divide,gc_content

#Function to subtract two number
 function subtract(a,b)
        println("Enter number:")
        a=parse(Float64,readline())
        println("Subtractiobn")
        println("Enter the second number to subtract from the first")
        b=parse(Float64, readline())
        return a-b
  end

#function to divide two numbers
 function divide(a,b)
        println("Division")
        println("Enter number to be divided:")
        a=parse(Float64,readline())
        println("Enter the second number")
        b=parse(Float64, readline())
         if b==0
                 println("Division by Zero not allowed.Enter a valid number")
                return a/b
         end
 end
#function to multiply two number
 function multiply(a,b)
        println("Multiplication")
        println("Enter number to multiply:")
        a=parse(Float64,readline())
        println("Enter the second number ")
        b=parse(Float64, readline())
        return a*b
 end
#Function to add two numbers
 function add(a::Float64, b::Float64)
        println("Addition")
        println("Enter number:")
        a=parse(Float64,readline())
        println("Enter the second number")
        b=parse(Float64, readline())
        return a+b
 end
#function to calculate GC content percentage
 function gc_content(dna_sequence)
        println("Enter DNA sequence")
        dna_sequence=readline()
        total_content=length(dna_sequence)
        gc_count = count(c-> c in "GC", dna_sequence)
        return gc_count/total_content*100
 end
end  


using. calculator

dna_sequence=readline()
GC=calculator.gc_content(dna_sequence)
    println("GC is  $GC percent")