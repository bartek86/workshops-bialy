module CategoriesHelper

    def administrator
        if !current_user.nil? && current_user.admin?
            return true
        end
    end

end
