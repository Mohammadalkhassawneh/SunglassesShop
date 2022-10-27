module ApplicationHelper
    def gravatar_for(lense, options = {size: 180})
        size = options[:size]
        gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
        image_tag(gravatar_url, class: 'rounded shadow mx-auto d-block')
    end

    def current_order 
        unless session[:order_id].nil?
            Order.find(session[:order_id])
        else
            Order.new
        end
    end
end
