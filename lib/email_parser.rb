class EmailAddressParser(email_string)
    attr_accessor :email

    def parse
        return email.split(/[,\s]+/)
    end
end


