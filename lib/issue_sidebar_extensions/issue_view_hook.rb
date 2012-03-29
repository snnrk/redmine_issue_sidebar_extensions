class IssueViewHook < Redmine::Hook::ViewListener
  render_on :view_issues_sidebar_queries_bottom, :partial => 'issue_sidebar_extensions/show'
end
