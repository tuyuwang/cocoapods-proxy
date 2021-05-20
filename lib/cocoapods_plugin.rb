require 'cocoapods-proxy/command'

require_relative 'cocoapods-proxy/proxy'

module CocoapodsProxy
    Pod::HooksManager.register('cocoapods-proxy', :post_install) do |context|
       # Proxy.new.log(context)
    end
    Pod::HooksManager.register('cocoapods-proxy', :post_update) do |context|
       # Proxy.new.log(context)
    end
end