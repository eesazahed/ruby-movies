

class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  before_action :load_latest_commit

  private

  def load_latest_commit
    commit_info = `git log -1 --pretty=format:"%h|%s|%cr"`
    @commit_parts = commit_info.split("|")
  end
end
