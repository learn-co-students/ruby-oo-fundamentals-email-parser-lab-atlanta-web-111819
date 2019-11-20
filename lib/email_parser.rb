class EmailAddressParser(email_string)
    attr_accessor :email

    def parse
        return email_string.split(/[,\s]+/)
    end
end


