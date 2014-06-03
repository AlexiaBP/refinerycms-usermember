module Refinery
  module Usermembers
    module InstanceMethods
      extend ActiveSupport::Concern

      included do
        alias_method_chain :current_user_can_view_page?, :usermembers
      end

      protected

      def current_user_can_view_page_with_usermembers?
        if page.need_login? && !usermember_signed_in?
          false
        else
          current_user_can_view_page_without_usermembers?
        end
      end
    end
  end
end
