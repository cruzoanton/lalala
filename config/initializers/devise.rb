# frozen_string_literal: true

# Assuming you have not yet modified this file, each configuration option below
# is set to its default value. Note that some are commented out while others
# are not: uncommented lines are intended to protect your configuration from
# breaking changes in upgrades (i.e., in the event that future versions of
# Devise change the default values for those options).
#
# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  # config.secret_key = '637ba585b026deb2891984299d88abafc9446a09d7341<...>'
  # ==> Mailer Configuration
  config.mailer_sender = "please-change-me-at-config-initializers-devise@example.com"
  config.mailer = "Devise::Mailer"
  config.parent_mailer = "ActionMailer::Base"
  require "devise/orm/active_record"

  # ==> Configuration for any authentication mechanism
  config.authentication_keys = [:email]
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  # config.request_keys = []
  config.params_authenticatable = true

  config.http_authenticatable = false
  config.http_authenticatable_on_xhr = true
  config.http_authentication_realm = "Application"
  config.paranoid = true
  config.skip_session_storage = [:http_auth]
  config.clean_up_csrf_token_on_authentication = true
  config.reload_routes = true

  # ==> Configuration for :database_authenticatable
  config.stretches = Rails.env.test? ? 1 : 12
  # config.pepper = 'd21b3bcdbf834c707e048da1bdc5f721a8783b80127e8e1553a198496e561<...>'
  config.send_email_changed_notification = true
  config.send_password_change_notification = true

  # ==> Configuration for devise_invitable
  config.invite_for = 2.weeks
  config.invite_key = {email: /\A[^@]+@[^@]+\z/}
  config.validate_on_invite = true
  config.resend_invitation = true
  config.invited_by_class_name = "User"
  config.invited_by_foreign_key = :invited_by_id
  config.allow_insecure_sign_in_after_accept = false

  # ==> Configuration for :confirmable
  config.allow_unconfirmed_access_for = 0.days
  config.confirm_within = 3.days
  config.reconfirmable = true
  config.confirmation_keys = [:email]

  # ==> Configuration for :rememberable
  config.remember_for = 2.weeks
  config.expire_all_remember_me_on_sign_out = true
  config.extend_remember_period = false
  config.rememberable_options = {}

  # ==> Configuration for :validatable
  config.password_length = 8..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  # ==> Configuration for :recoverable
  config.reset_password_keys = [:email]
  config.reset_password_within = 6.hours
  config.sign_in_after_reset_password = true

  # ==> Turbolinks configuration
  # If your app is using Turbolinks, Turbolinks::Controller needs to be included to make redirection work correctly:
  #
  ActiveSupport.on_load(:devise_failure_app) do
    include Turbolinks::Controller
  end

  # ==> Configuration for :timeoutable
  # config.timeout_in = 30.minutes

  # ==> Configuration for :lockable
  # Defines which strategy will be used to lock an account.
  # :failed_attempts = Locks an account after a number of failed attempts to sign in.
  # :none            = No lock strategy. You should handle locking by yourself.
  # config.lock_strategy = :failed_attempts

  # Defines which key will be used when locking and unlocking an account
  # config.unlock_keys = [:email]

  # Defines which strategy will be used to unlock an account.
  # :email = Sends an unlock link to the user email
  # :time  = Re-enables login after a certain amount of time (see :unlock_in below)
  # :both  = Enables both strategies
  # :none  = No unlock strategy. You should handle unlocking by yourself.
  # config.unlock_strategy = :both

  # Number of authentication tries before locking an account if lock_strategy
  # is failed attempts.
  # config.maximum_attempts = 20

  # Time interval to unlock the account if :time is enabled as unlock_strategy.
  # config.unlock_in = 1.hour

  # Warn on the last attempt before the account is locked.
  # config.last_attempt_warning = true

  # ==> Configuration for :encryptable
  # Allow you to use another hashing or encryption algorithm besides bcrypt (default).
  # You can use :sha1, :sha512 or algorithms from others authentication tools as
  # :clearance_sha1, :authlogic_sha512 (then you should set stretches above to 20
  # for default behavior) and :restful_authentication_sha1 (then you should set
  # stretches to 10, and copy REST_AUTH_SITE_KEY to pepper).
  #
  # Require the `devise-encryptable` gem when using anything other than bcrypt
  # config.encryptor = :sha512

  # ==> Scopes configuration
  # Turn scoped views on. Before rendering "sessions/new", it will first check for
  # "users/sessions/new". It's turned off by default because it's slower if you
  # are using only default views.
  # config.scoped_views = false

  # Configure the default scope given to Warden. By default it's the first
  # devise role declared in your routes (usually :user).
  # config.default_scope = :user

  # Set this configuration to false if you want /users/sign_out to sign out
  # only the current scope. By default, Devise signs out all scopes.
  # config.sign_out_all_scopes = true

  # ==> Navigation configuration
  # Lists the formats that should be treated as navigational. Formats like
  # :html, should redirect to the sign in page when the user does not have
  # access, but formats like :xml or :json, should return 401.
  #
  # If you have any extra navigational formats, like :iphone or :mobile, you
  # should add them to the navigational formats lists.
  #
  # The "*/*" below is required to match Internet Explorer requests.
  # config.navigational_formats = ['*/*', :html]

  # The default HTTP method used to sign out a resource. Default is :delete.
  config.sign_out_via = :delete

  # ==> OmniAuth
  # Add a new OmniAuth provider. Check the wiki for more information on setting
  # up on your models and hooks.
  # config.omniauth :github, 'APP_ID', 'APP_SECRET', scope: 'user,public_repo'

  # ==> Warden configuration
  # If you want to use other strategies, that are not supported by Devise, or
  # change the failure app, you can configure them inside the config.warden block.
  #
  # config.warden do |manager|
  #   manager.intercept_401 = false
  #   manager.default_strategies(scope: :user).unshift :some_external_strategy
  # end

  # ==> Mountable engine configurations
  # When using Devise inside an engine, let's call it `MyEngine`, and this engine
  # is mountable, there are some extra configurations to be taken into account.
  # The following options are available, assuming the engine is mounted as:
  #
  #     mount MyEngine, at: '/my_engine'
  #
  # The router that invoked `devise_for`, in the example above, would be:
  # config.router_name = :my_engine
  #
  # When using OmniAuth, Devise cannot automatically set OmniAuth path,
  # so you need to do it manually. For the users scope, it would be:
  # config.omniauth_path_prefix = '/my_engine/users/auth'
end
