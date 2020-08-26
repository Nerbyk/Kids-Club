module RequestsHelper
    def generate_message(params)
        params = params.to_h || {}
        name = params["name"]
        phone = params["phone"]
        email = params["email"] 
        text = params["text"]
        message = "Имя: #{name}\nТелефон: #{phone}\nEmail: #{email}\nТекст заявки: #{text}"
        return message
    end


end
