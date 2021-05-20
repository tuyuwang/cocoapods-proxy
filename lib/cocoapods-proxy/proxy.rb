require 'cocoapods'

module CocoapodsProxy
	class Proxy
		
	end
end

module Pod
	class Installer
		class PodSourceInstaller

			define_method(:download_request) do 
				
				proxy = 'https://ghproxy.com'
				origin = root_spec.source[:git].to_s

				if origin.include? 'http'
					
					if !(origin.include? proxy)
						root_spec.attributes_hash['source']['git'] = proxy + '/' + origin
						# UI.puts root_spec.source
					end
					
				end
				
				Downloader::Request.new(
		          :spec => root_spec,
		          :released => released?,
		        )
				
			end
		end
	end

	class Podfile
		module DSL
			# old_method = instance_method(:pod)

			# define_method(:pod) do |name, *args|
			# 	UI.puts 'tuyw -- begin'
			# 	UI.puts args 
			# 	UI.puts 'tuyw -- end'
			# 	old_method.bind(self).(name, *args)
				# return

			# end
		end

		module Downloader
			# old_method = instance_method(:strategy_from_options)

			# define_method(:strategy_from_options) do |params|
			# 	UI.puts params

			# 	old_method.bind(self).(params)
			# end
		end
	end
end