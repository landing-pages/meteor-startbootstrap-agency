#
# Global Template helpers
#

@parseText = (s) ->
	_.get(LandingPage, s) || _.get(LandingPageDefault, s)

Template.registerHelper 'lpAppName', ->
	parseText 'appName'


#
#  Root Template handler
#
#

Template.lpStartBootstrapAgency.rendered = ->
	$('body').attr('id', 'page-top').addClass('index').scrollspy target: '.navbar-fixed-top'


#
#
#  Navbar Template
#

Template.lpStartBootstrapAgencyNavBar.events
	'click a.page-scroll': (e) ->
		$anchor = $(this)
		$('html, body').stop().animate(
			scrollTop: $($anchor.attr('href')).offset().top
		, 1500, 'easeInOutExpo')
		event.preventDefault()
	'click .navbar-collapse ul li a': ->
		$('.navbar-toggle:visible').click()

#
# Header Template
#
#
Template.lpStartBootstrapAgencyHeader.rendered = ->
	elem = document.querySelector('header')
	if LandingPage.backgroundImage
		elem.style.backgroundImage = "url(#{parseText('backgroundImage')})"

Template.lpStartBootstrapAgencyHeader.helpers
	leadIn: ->
		parseText 'intro.leadIn'
	heading: ->
		parseText 'intro.heading'
	buttonText: ->
		parseText 'intro.button.buttonText'
	buttonUrl: ->
		parseText 'intro.button.buttonUrl'
