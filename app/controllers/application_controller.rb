class ApplicationController < ActionController::Base
    include ApplicationHelper
    protect_from_forgery with: :null_session
            def after_sign_in_path_for(resource)
                "/signedinuserprofile"
            end

end
