class ApplicationController < ActionController::Base
    def index
        Rails-app.logger.info "Handled by #{Socket.gethostname}"
        render plain: "Handled by #{Socket.gethostname}"
    end
end
