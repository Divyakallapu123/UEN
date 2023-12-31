<?php
/**
 * OptionTree Post Formats.
 *
 * @package OptionTree
 */

if ( ! defined( 'OT_VERSION' ) ) {
	exit( 'No direct script access allowed' );
}

if ( ! class_exists( 'OT_Post_Formats' ) ) {

	/**
	 * OptionTree Post Formats class.
	 *
	 * This class loads all the methods and helpers specific to build a the post format metaboxes.
	 */
	class OT_Post_Formats {

		/**
		 * Class Constructor
		 *
		 * @access    public
		 * @since     2.3.0
		 */
		public function __construct() {
			$this->setup_actions();
		}

		/**
		 * Setup the default filters and actions.
		 *
		 * @uses add_action() To add various actions.
		 * @uses add_filter() To add various filters.
		 *
		 * @access private
		 * @since  2.3.0
		 */
		private function setup_actions() {

			// Initialize the meta boxes.
			add_action( 'admin_init', array( $this, 'meta_boxes' ), 2 );

			// Setup pings for the link & quote URLs.
			add_filter( 'pre_ping', array( $this, 'pre_ping_post_links' ), 10, 3 );
		}

		/**
		 * Builds the default Meta Boxes.
		 *
		 * @access private
		 * @since  2.3.0
		 */
		public function meta_boxes() {

			// Exit if called outside of WP admin.
			if ( ! is_admin() ) {
				return false;
			}

			/**
			 * Filter the post formats meta boxes.
			 *
			 * @since 2.6.0
			 *
			 * @param array $meta_boxes The meta boxes being registered.
			 * @return array
			 */
			$meta_boxes = apply_filters(
				'ot_recognized_post_format_meta_boxes',
				array(
					ot_meta_box_post_format_gallery(),
					ot_meta_box_post_format_link(),
					ot_meta_box_post_format_quote(),
					ot_meta_box_post_format_video(),
					ot_meta_box_post_format_audio(),
				)
			);

			/**
			 * Register our meta boxes using the
			 * ot_register_meta_box() function.
			 */
			foreach ( $meta_boxes as $meta_box ) {
				ot_register_meta_box( $meta_box );
			}
		}

		/**
		 * Setup pings for the link & quote URLs
		 *
		 * @access public
		 * @since  2.3.0
		 *
		 * @param  array $post_links The URLs to ping.
		 * @param  array $pung Pinged URLs.
		 * @param  int   $post_id Post ID.
		 */
		public function pre_ping_post_links( $post_links, $pung, $post_id = null ) {

			$_link = get_post_meta( $post_id, '_format_link_url', true );
			if ( ! empty( $_link ) && ! in_array( $_link, $pung, true ) && ! in_array( $_link, $post_links, true ) ) {
				$post_links[] = $_link;
			}

			$_quote = get_post_meta( $post_id, '_format_quote_source_url', true );
			if ( ! empty( $_quote ) && ! in_array( $_quote, $pung, true ) && ! in_array( $_quote, $post_links, true ) ) {
				$post_links[] = $_quote;
			}
		}
	}
}

/**
 * Instantiate The Class.
 *
 * @since 1.0
 */
if ( function_exists( 'ot_register_meta_box' ) ) {
	new OT_Post_Formats();
}
?>