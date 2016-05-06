class PeopleController < ApplicationController
    def yen
        @articles= Article.all
    end
end
