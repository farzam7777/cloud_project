# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( css/animate.css )
Rails.application.config.assets.precompile += %w( css/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( css/datepicker.css )
Rails.application.config.assets.precompile += %w( css/font-awesome.css )
Rails.application.config.assets.precompile += %w( css/lightslider.css )
Rails.application.config.assets.precompile += %w( css/owl.carousel.css )
Rails.application.config.assets.precompile += %w( css/reset.css )
Rails.application.config.assets.precompile += %w( css/responsive.css )
Rails.application.config.assets.precompile += %w( css/uikit.min.css )
Rails.application.config.assets.precompile += %w( css/rev-slider/settings.css )
Rails.application.config.assets.precompile += %w( js/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( js/datepicker.js )
Rails.application.config.assets.precompile += %w( js/grid.js )
Rails.application.config.assets.precompile += %w( js/jquery.easing.1.3.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.scrollUp.min.js )
Rails.application.config.assets.precompile += %w( js/lightslider.js )
Rails.application.config.assets.precompile += %w( js/main.js )
Rails.application.config.assets.precompile += %w( js/owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( js/uikit.lightbox.js )
Rails.application.config.assets.precompile += %w( js/uikit.min.js )
Rails.application.config.assets.precompile += %w( js/wow.min.js )
Rails.application.config.assets.precompile += %w( js/vendor/jquery-1.11.2.min.js )
Rails.application.config.assets.precompile += %w( js/rev-slider/rs.home.js )
Rails.application.config.assets.precompile += %w( js/rev-slider/rs-plugin/jquery.themepunch.plugins.min.js )
Rails.application.config.assets.precompile += %w( js/rev-slider/rs-plugin/jquery.themepunch.revolution.js )