
class Bob
    def self.caps?(text)
        text.split("").all?{|c| Array("A".."Z").include?(c) || [",", ""," ", "!","?"].include?(c)}
    end

    def self.only_numbers?(text)
        text.split("").all?{|c| Array("0".."9").include?(c) || [",", " ", ""].include?(c)}
    end

    def self.question_number?(text)
        text.split("").all?{|c| Array("0".."9").include?(c) || ["?"].include?(c)} 
    end

    def self.hey(text)    
        case    
        when text.strip.empty?
            "Fine. Be that way!"
        
        when only_numbers?(text)
            "Whatever."

        when question_number?(text)
            "Sure."
        
        when caps?(text) || text == text.upcase
            "Whoa, chill out!"

        when text.end_with?("?")
            "Sure."

        else
            "Whatever."
        end
    end
end