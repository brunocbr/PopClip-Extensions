    #!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

    require 'cgi'
    url = "agenda://x-callback-url/append-to-note?title=Inbox&text=- [ ] {query}"

    query = ENV['POPCLIP_TEXT']
    short = ENV['POPCLIP_TEXT']
    title = short[0,75]

    url.sub!(/\{query\}/,(query))
    url.sub!(/\{title\}/,(title))
    %x{open "#{url}"}


    # based on Marc Boulos code https://agenda.community/t/adding-agenda-notes-to-popclip/4897/4
