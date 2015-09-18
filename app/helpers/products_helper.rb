module ProductsHelper
  def auth_user
    if user_signed_in? && (current_user.id == product.user_id || current_user.admin)
      return true
    end
  end
end
