<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'UEN' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'L!<S39 #w 6|B@U1`)vT$EYd}qbRl`%}}Q1lV5p5p):, [^ZLa_XQ q Wo3%Y!HP' );
define( 'SECURE_AUTH_KEY',  '<t7sYvODZxLSN(gqu}%_JM%`1b%L:,TX:g<H/*9u]Rv/ZMEk m@]KeD}A7$m<;w[' );
define( 'LOGGED_IN_KEY',    'Br2XLG$u2]]?sh]eP~g8=OH{O5h([-Z xyObM>|[7ga.n!caFoD,?chp9%,{OekC' );
define( 'NONCE_KEY',        'C#Fp9{Zq/yi6Y8_u,u<)>1!5UD>XlxQYw$]5-==_0i2ns};M5FtGqYh>3FH_gNt7' );
define( 'AUTH_SALT',        '3)x(56~ltWO+`8_Bg?7kMyjwC0#7~kO~=eBp9kY#JA?XsZoSwvSnph@m.:L*6N%/' );
define( 'SECURE_AUTH_SALT', 'va?`z(T%SwWrY]q37$No-V_PnbFmEsruI:8)Fmgs]NZrsRNYx*4h@!wse2;~=!rB' );
define( 'LOGGED_IN_SALT',   'iAB+tg|r/}eu~%I6zTDV-~$7mm&Yhj%,>oysvDW:mz9pfcF92NtXxpCb(zGh=sa8' );
define( 'NONCE_SALT',       'uRE`h,sG#dKR8woW,bg1Yg1ka+KKn#OVHR2aH}DVz;tUn2dx)Z_x{t%%N%5)+ ?$' );

/**#@-*/

/**
 * WordPress database table prefix.
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
// define('SCRIPT_DEBUG', TRUE);
// define('WP_DEBUG', TRUE);
// define( 'WP_DEBUG_LOG', true );


/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';



