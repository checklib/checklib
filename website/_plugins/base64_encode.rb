require "base64"

module Jekyll
    # Filter to encode text as base64, for use in download URL
    module Base64Filter
        def base64_encode (input)
            Base64.encode64(input)
        end
    end
end

Liquid::Template.register_filter(Jekyll::Base64Filter)
