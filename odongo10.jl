Function calculateGCcontent()
    validchar = Set(['A', 'T', 'C', 'G'])  # Define validchar in the outer scope

    while true
        println("Enter DNA seq :")
        DNAseq = uppercase(readline())

        function validDNA(c)
            if all(x -> x in validchar, DNAseq)
                return true
            else
                println("Enter Valid DNA")
                return false
            end
        end

        if any(x -> x ∉ validchar, DNAseq)
            println("Enter Valid DNA")
            continue
        end

        function gcbases(l)
            l == 'G' || l == 'C'
        end

        function complimentarydna(n)
            if n == 'A'
                return 'T'
            elseif n == 'T'
                return 'A'
            elseif n == 'C'
                return 'G'
            elseif n == 'G'
                return 'C'
            else
                return n
            end
        end

        compliment = join(complimentarydna.(collect(DNAseq)))

        GCcontent = count(gcbases, DNAseq)
        totaldna = length(DNAseq)
        GCcontentpercent = round(GCcontent / totaldna * 100, digits=2)
        println("Compliment: $compliment")
        print("DNA seq Entered: $DNAseq")
        println("GC content: $GCcontentpercent%")

        break
    end
end

calculateGCcontent()
