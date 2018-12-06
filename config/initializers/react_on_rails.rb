# frozen_string_literal: true

# See https://github.com/shakacode/react_on_rails/blob/master/docs/basics/configuration.md
# for many more options.

ReactOnRails.configure do |config|
  config.random_dom_id = false # default is true
  config.node_modules_location = "client" # Pre 9.0.0 always used "client"
  config.build_production_command = "yarn run build:production"
  config.build_test_command = "yarn run build:test"

  ################################################################################
  ################################################################################
  # SERVER RENDERING OPTIONS
  ################################################################################
  # This is the file used for server rendering of React when using `(prerender: true)`
  # If you are never using server rendering, you should set this to "".
  # Note, there is only one server bundle, unlike JavaScript where you want to minimize the size
  # of the JS sent to the client. For the server rendering, React on Rails creates a pool of
  # JavaScript execution instances which should handle any component requested.
  #
  # While you may configure this to be the same as your client bundle file, this file is typically
  # different. You should have ONE server bundle which can create all of your server rendered
  # React components.
  #
  config.webpack_generated_files = %w[manifest.json]
  config.server_bundle_js_file = "hello-world-bundle.js"
end
