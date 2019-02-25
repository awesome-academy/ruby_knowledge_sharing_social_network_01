class PostsController < ApplicationController
  before_action :list_visibility, only: %i(new)

  def new
    @post = Post.new
  end

  def create; end

  private

  def list_visibility
    @list = Post.visibilities
                .map{|h, k| [I18n.t(Settings.post_i18n_path + h), k]}
  end
end
