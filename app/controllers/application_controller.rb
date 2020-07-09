class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def fav_subsidio_text
    @fav_post_exists ? 'Eliminar publicación de favoritos' : 'Agregar publicación a favoritos'
  end
  helper_method :fav_subsidio_text
end
