module RequestsHelper
    def generate_message(params, id)
        params = params.to_h || {}
        name = params["name"]
        phone = params["phone"]
        email = params["email"] 
        text = params["text"]
        message = "Номер заявки: #{id}\n\nИмя: #{name}\nТелефон: #{phone}\nEmail: #{email}\nТекст заявки: #{text}"
        return message
    end


end
