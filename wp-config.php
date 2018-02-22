<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'wordpress');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'yolo');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '0tTTh(~?bvc@i{mSjCR,VI#6=><NJM1=$guP2+X9Bd44@#:S:tk*0K2<eBFC| uJ');
define('SECURE_AUTH_KEY',  'IXQm)erkJ|RPk=PFp&pGD;-1T@SFY@|nf1f[A[T/g_CG3p`;wJ7QY``sMvN+&Y?z');
define('LOGGED_IN_KEY',    '6;s_,}eTJ23!-SL?zNuopw[M~5mv]Q}y50d/3AC$+:9*7cI2aJ>#f]ZodS0|2HNr');
define('NONCE_KEY',        'z< ppG%V5Q3EoqBwYGQaCF~D7Idm~-d~i78>spyOHY.VlU>*BtjO9I_0h yREX9g');
define('AUTH_SALT',        'HYDpz [GrtDP?JJaxNF[#AtI$+9jN2C;${Zf[QX+0`SVy@QSSVpnyRk0XB&7j ],');
define('SECURE_AUTH_SALT', 'k~=TY}|e5A%iz:IAjZD4WD~[dggZn.i4={<_E%`GO;2XNj{b.W(_6JM1lnSN+m(w');
define('LOGGED_IN_SALT',   'M[&p/TL.k,eoJmh8 LmFWb.+<c&x4%s0<+L;]t4|I`DcgSn2fg,~qr&XF0a#exF>');
define('NONCE_SALT',       'V+11xdV8T%{4CyL(p1&N[~h{>6pmAX=3gRlOo*]X~tqi7~etAliWOsi^V]<Mg-6(');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');