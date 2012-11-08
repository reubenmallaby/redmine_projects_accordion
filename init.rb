Redmine::Plugin.register :redmine_projects_accordion do
  name 'Redmine Projects Accordion plugin'
  author 'Reuben Mallaby'
  description 'This is a Redmine plugin which will turn the projects page into an accordion view using jQuery UI accordion code'
  version '0.1.0'
  url 'http://reuben.mallaby.me'
  author_url 'http://isic.he-arc.ch/isic-galerie-institut-equipe/reuben-mallaby'
end

class RedmineProjectsAccordionListener < Redmine::Hook::ViewListener

  # Adds javascript and stylesheet tags
  def view_layouts_base_html_head(context)
    stylesheet_link_tag('redmine_projects_accordion', :plugin => :redmine_projects_accordion)
  end
  
end
