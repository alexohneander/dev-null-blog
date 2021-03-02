require 'socket'

class HostnameInlineTag < Liquid::Tag
    def initialize(tag_name, input, tokens)
      super
    end
  
    def render(context)
      # Write the output HTML string
      output = Socket.gethostname
      output += " - "
      output += ip_address = Socket.ip_address_list.find { |ai| ai.ipv4? && !ai.ipv4_loopback? }.ip_address
  
      # Render it on the page by returning it
      return output;
    end
  end
  Liquid::Template.register_tag('hostname', HostnameInlineTag)