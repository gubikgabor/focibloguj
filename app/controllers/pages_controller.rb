class PagesController < ApplicationController
    before_action :require_login
    def about
        @title = 'About Us';
        @content = 'This is the about pages';
    end
end
