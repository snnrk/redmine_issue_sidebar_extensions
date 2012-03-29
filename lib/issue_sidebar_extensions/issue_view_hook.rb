class IssueViewHook < Redmine::Hook::ViewListener
  def view_issues_sidebar_queries_bottom(context)
    begin
      page = Project.find(params[:project_id]).wiki.find_page(ISSUE_SIDEBAR)
      content = page.content_for_version(params[:version])
      texilizable content, :text, :attachments => content.page.attachments
    rescue
      l(:label_issue_sidebar_notfound)
    end
  end
end
