module Refinery
  module Usermembers
    module Admin
      class UsermembersController < ::Refinery::AdminController
        crudify :"refinery/usermembers/usermember",
        :title_attribute => 'email', :xhr_paging => true
      end
    end
  end
end
