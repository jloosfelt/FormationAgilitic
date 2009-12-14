# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_formation_session',
  :secret      => 'ebdc06f77d490d1695c576bfb29fd2a2ae4e38005519209abee4f92645a637407c44a1d3fda61a0dfb1fac666ba58bde025e5c970647589a65655a34d4068656'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
