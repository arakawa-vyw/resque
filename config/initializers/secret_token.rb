# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Resque::Application.config.secret_key_base = '4545b425c7052433f61f1bf14392759ed0d63d953fc1487d13b822b2e2a86bf06d10fe7657fd58d24c1143640ccc754b490bb15830fe19076c66a4c82a97c0ed'
