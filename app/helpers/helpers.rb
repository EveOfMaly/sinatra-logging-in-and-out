class Helpers

    def self.current_user(session)
        #uses session hash to search in database if a current user.
        @user = User.find_by_id(session[:user_id])
    end

    def self.is_logged_in?(session)
        # returns true if the user_id is in the session hash and false if not.
        !!session[:user_id]
    end

end