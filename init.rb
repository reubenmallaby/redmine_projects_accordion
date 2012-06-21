Redmine::Plugin.register :redmine_projects_accordion do
  name 'Redmine Projects Accordion plugin'
  author 'Reuben Mallaby'
  description 'This is a Redmine plugin which will turn the projects page into an accordion view using Accordion js'
  version '0.0.1'
end

class RedmineProjectsAccordionListener < Redmine::Hook::ViewListener

  # Adds javascript and stylesheet tags
  def view_layouts_base_html_head(context)
    javascript_include_tag('accordion', :plugin => :projects_tree_view) +
    javascript_include_tag('redmine_projects_accordion', :plugin => :redmine_projects_accordion) +
    stylesheet_link_tag('redmine_projects_accordion', :plugin => :redmine_projects_accordion)
  end
  
end
