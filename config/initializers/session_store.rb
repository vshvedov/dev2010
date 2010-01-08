# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dev2010_session',
  :secret      => 'ff2e679cc5097a7724f0250e9b56ec5e66f2be52673eaa55e155966717a0dbdb6aed49355fa65faecbc3733e45ccedb8ef6cb0e1c44e50c509cc24aafeb28f7e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
