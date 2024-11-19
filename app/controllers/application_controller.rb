class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller?
      "application" # または "devise" を使用している場合はその名前に変更
    else
      "application"
    end
  end
end
