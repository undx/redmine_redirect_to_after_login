# redirect_to_after_login - Redmine plugin

This plugin redirects the user, just after he has logged, to the URL defined in settings.
If the redirect url is not defined (default), the behaviour is as usual(My Page).

## Installation

    git clone https://github.com/undx/redmine_redirect_to_after_login.git redirect_to_after_login

Please note that plugin *must be named* `redirect_to_after_login`.

Restart Redmine's server.

## Configuration

Go to `Administration` > `Plugins` > `Configure` to set the URL.

Enter the relative URL beginning with a slash (/landing-page) or the absolute, FQDN URL (http://www.example.com/landing-page)
