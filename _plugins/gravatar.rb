require 'digest/md5'
# https://blog.desgrange.net/2012/07/02/gravatar-filter-jekyll.html

module Jekyll
  module GravatarFilter
    def gravatar(input)
      email_address = input.downcase.strip
      hash = Digest::MD5.hexdigest(email_address)
      "http://www.gravatar.com/avatar/#{hash}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::GravatarFilter)