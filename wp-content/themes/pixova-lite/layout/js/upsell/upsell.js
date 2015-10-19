
/**
 * Upsell notice for theme
 */


( function( $ ) {

	if ('undefined' !== typeof prefixL10n) {


		var upsellLink = $('<a class="upsell-link"></a>')
				.attr('href', prefixL10n.prefixUpsellURL)
				.attr('target', '_blank')
				.text(prefixL10n.prefixUpsellLabel)
			;

		var documentatLink = $('<a class="doc-link"></a>')
				.attr('href', prefixL10n.prefixDocURL)
				.attr('target', '_blank')
				.text(prefixL10n.prefixDocLabel)
			;

		var reviewLink = $('<a class="review-link"></a>')
				.attr('href', prefixL10n.prefixRateURL)
				.attr('target', '_blank')
				.text(prefixL10n.prefixRateLabel)
			;


		$('.wp-full-overlay-sidebar-content').prepend( documentatLink );
		$('.wp-full-overlay-sidebar-content').prepend( reviewLink );
		$('.wp-full-overlay-sidebar-content').prepend( upsellLink );

	}

}) ( jQuery );
