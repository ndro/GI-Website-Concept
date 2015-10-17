<?php
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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'db_gebrak');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Xb-g@-`|L|S_Lh4h8U4k9LSMTXX;w/WU3Jfnz/*Qu,)VIk5rs9Y+b!T/nh: Dl/<');
define('SECURE_AUTH_KEY',  '&+*v8dUT[DU1JW[XK7}Lk:qu/-KS>*>pS]^-X}85~`7O3[3c ah*Nst=z7A{ GGl');
define('LOGGED_IN_KEY',    'NDT[b ) Xh97S>&ACrdcjLk_OV)&KLu&z2}i|#@mRarfJ1/z{`(Ug%o%.aN$jtuo');
define('NONCE_KEY',        ')Tnw/fx8V#(gu,$wkAmkMZgPH0U0n>Yn,Fk+6RybgL2K|5ADBnpgt4u5MC@h-0R{');
define('AUTH_SALT',        'V0ySrEgHr)?Bb4dQ_bML+O]unpU+g3,sgA,x#2Qy+>{!kt1L`ZOS@#i<f+$4Lxz.');
define('SECURE_AUTH_SALT', 'GV/#n,1:VA-;fV{Vz.#KI6jhee`({]li^33YIr0p$y1n.:.+<bUkt eOmY$WUilf');
define('LOGGED_IN_SALT',   'KT?5MuI>b*yX4 2u,H-8:jgG5XCalghSyc~J!RDHnj5SuU3|6]e{/F.#|-6EpsEe');
define('NONCE_SALT',       '>HwJ|J3aA1iW,ah@?*Fy?E3-AQb@n))%lo3-_gQ$26c%[+vvMV4?.,JJ|k-!5lf}');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
