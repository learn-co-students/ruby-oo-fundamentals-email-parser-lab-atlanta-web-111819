require 'pry'
class EmailAddressParser
    
    attr_accessor :raw_emails

    def initialize(emails)
        @raw_emails = emails
        # binding.pry
    end

    def parse
        # if @raw_emails.include?(',')
        #     @raw_emails.split(', ')
        # else
        #     @raw_emails.split(' ')
        # end
        comma_emails = @raw_emails.split(' ')
        emails = comma_emails.map do |addr|
            if addr.end_with?(',')
                addr[0..-2]
            else
                addr
            end
            
        end
        final_list = []
        emails.each do |email|
            if !final_list.include?(email)
                final_list << email
            end
        end
        final_list
    end
end