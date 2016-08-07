module Jekyll
  module DisqusFilters
    # Generates the config for disqus integration
    # If a page object is given, it generates the config variables only for this
    # page. Otherwise it generate only the global config variables.
    #
    #   {{ site | disqus_config }}
    #   {{ site | disqus_config:page }}
    def disqus_config(site, page = nil)
      if page
        disqus_vars = {
          'disqus_identifier'  => page['url'],
          'disqus_url'         => "#{site['url']}#{page['url']}",
          'disqus_category_id' => page['disqus_category_id'] || site['disqus_category_id'],
          'disqus_title'       => j(page['title'] || site['site'])
        }
      else
        disqus_vars = {
          'disqus_developer'   => site['disqus_developer'],
          'disqus_shortname'   => site['disqus_shortname']
        }
      end

      disqus_vars.delete_if { |_, v| v.nil? }
      disqus_vars.map { |k, v| "var #{k} = '#{v}';" }.compact.join("\n")
    end
  end
end

Liquid::Template.register_filter(Jekyll::DisqusFilters)