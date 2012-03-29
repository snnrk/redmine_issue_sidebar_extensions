require 'redmine'
require 'issue_sidebar_extensions'

RedmineIssueSidebarExtensions::ISSUE_SIDEBAR = "IssueSidebar"

Redmine::Plugin.register :redmine_issue_sidebar_links do
  name 'Redmine issue sidebar links plugin'
  author 'OSANAI Noriaki'
  description 'Plugin for Redmine to place links in issue sidebar.'
  version '0.1.0'
  requires_redmine :version_or_higher => '1.2.0'
end
