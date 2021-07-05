<?php
/** Enable W3 Total Cache */
define('WP_CACHE', true); // Added by W3 Total Cache

//Begin Really Simple SSL session cookie settings
@ini_set('session.cookie_httponly', true);
@ini_set('session.cookie_secure', true);
@ini_set('session.use_only_cookies', true);
//END Really Simple SSL

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'i7802472_wp1' );

/** MySQL database username */
define( 'DB_USER', 'i7802472_wp1' );

/** MySQL database password */
define( 'DB_PASSWORD', 'Z.Yowu1SUEdNoQwyQyC90' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'VfpF0wdr92jAoWIhhrj7hvR1CyGZONVgXA50F3G1eMWCaJPpKZZYoT1OjCW3dVhs');
define('SECURE_AUTH_KEY',  'GXiu1aTNuezcMCQWMCgOaHzija3ZQnrxtoeLtgBIUbH1R7G4PT48qG6pImyhuQJC');
define('LOGGED_IN_KEY',    'eoZsmf7owX5vUB61R0IQY68GlJLroqIvubAG6Cb5AfetgR21JSYsImfxYNwOAz3C');
define('NONCE_KEY',        'sNLWlf3tYXlAF8yhJtJb9hwe9Lpbji0T8jLRO7le4yQPHWMFAW5RdE12aPjwWlov');
define('AUTH_SALT',        'DH6ZHMpbWHTjcnpbY3zy6phqEbNRUNWatzJ8ODxRubeWgflAWhf1NiWfYpN7abbN');
define('SECURE_AUTH_SALT', 'WeRhnRJJUgMruRksCuKR0odjrbYfdLj5mNlFEsygWncxrFzaQHkZCQUJu0ehXpv9');
define('LOGGED_IN_SALT',   'jacspOk4FN7bf9kitvV77B9naZ8IHXxPNgAMH7TyelahYhl10TnpFaiWx4R3heU6');
define('NONCE_SALT',       'e2BkjDO9tpmqkaun8cEtzwuYzKUghNEcayORzEjolOib2aHcpeB5qJgGYSuOVi8L');

/**
 * Other customizations.
 */
define('FS_METHOD','direct');
define('FS_CHMOD_DIR',0755);
define('FS_CHMOD_FILE',0644);
define('WP_TEMP_DIR',dirname(__FILE__).'/wp-content/uploads');

/**
 * Turn off automatic updates since these are managed externally by Installatron.
 * If you remove this define() to re-enable WordPress's automatic background updating
 * then it's advised to disable auto-updating in Installatron.
 */
define('AUTOMATIC_UPDATER_DISABLED', true);


/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
