module Jekyll
  class TravelGenerator < Generator
    safe true
    priority :normal

    def generate(site)
      travels = site.data['travels'] || []
      
      travels.each do |travel|
        site.pages << TravelPage.new(site, travel)
      end
    end
  end

  class TravelPage < Page
    def initialize(site, travel)
      @site = site
      @base = site.source
      @dir = 'wanderings'
      @name = "#{travel['slug']}.html"

      self.process(@name)
      self.data = {
        'layout' => travel['layout'] || 'travel',
        'title' => travel['name'],
        'type' => travel['type'],
        'coords' => travel['coords'],
        'date' => travel['date'],
        'permalink' => "/wanderings/#{travel['slug']}/"
      }
      self.content = travel['content']
    end
  end
end
