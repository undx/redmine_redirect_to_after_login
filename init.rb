require 'redmine'

Redmine::Plugin.register :redirect_to_after_login do
  name 'Redmine Redirect to url after login Plugin'
  author 'Emmanuel GALLOIS (undx)'
  description 'This plugin redirects the user, just after he has logged, to the URL defined in settings'
  version '0.0.2'
  url 'https://github.com/undx/redmine_redirect_to_after_login'
  author_url 'https://github.com/undx/'

  settings(:default => { 'redirect' => '' }, :partial => 'settings/redirect_to_after_login_settings' )
end

module Hooks
  class Hooks < Redmine::Hook::ViewListener
     def controller_account_success_authentication_after(context={})
         redirect_url = Setting[:plugin_redirect_to_after_login][:redirect]
         context[:request].params[:back_url] = redirect_url
         return ''
     end
  end
end
