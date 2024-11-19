class PwaController < ApplicationController
  def manifest
    render file: Rails.root.join("public", "manifest.json"), content_type: "application/json"
  end
end