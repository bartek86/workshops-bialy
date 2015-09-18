module ApplicationHelper
    def username
        return current_user.firstname + " " + current_user.lastname
    end
end
