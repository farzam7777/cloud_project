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
Rails.application.config.assets.precompile += %w( css/bootstrap.css )
Rails.application.config.assets.precompile += %w( css/font-awesome.min.css )
Rails.application.config.assets.precompile += %w( css/owl.carousel.css )
Rails.application.config.assets.precompile += %w( css/oul.theme.css )
Rails.application.config.assets.precompile += %w( css/prettyPhoto.css )
Rails.application.config.assets.precompile += %w( css/responsive.css )
Rails.application.config.assets.precompile += %w( css/theme.css )
Rails.application.config.assets.precompile += %w( css/colors/turquoise.css )
Rails.application.config.assets.precompile += %w( css/smoothness/jquery-ui-1.10.4.custom.min.css )
Rails.application.config.assets.precompile += %w( css/colors/turquoise.css )

Rails.application.config.assets.precompile += %w( js/bootstrap-hover-dropdown.min.js )
Rails.application.config.assets.precompile += %w( js/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( js/custom.js )
Rails.application.config.assets.precompile += %w( js/jquery-ui-1.10.4.custom.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.forms.js )
Rails.application.config.assets.precompile += %w( js/jquery.stick.js )
Rails.application.config.assets.precompile += %w( js/jquery.gmap.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.isotope.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.nicescroll.js )
Rails.application.config.assets.precompile += %w( js/jquery.parallax-1.1.3.js )
Rails.application.config.assets.precompile += %w( js/jquery.prettyPhoto.js )
Rails.application.config.assets.precompile += %w( js/owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( js/switch.js )
Rails.application.config.assets.precompile += %w( js/waypoints.min.js )
Rails.application.config.assets.precompile += %w( js/jquery-1.11.0.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.themepunch.tools.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.themepunch.revolution.min.js )
Rails.application.config.assets.precompile += %w( js/jquery-1.11.0.min.js )