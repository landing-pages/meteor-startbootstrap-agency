#
# Global Template helpers
#

parseText = (s) ->
  text = ''
  if typeof LandingPage != 'undefined'
    text = _.get(LandingPage, s)
  else
    text = _.get(LandingPageDefault, s)

  text

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
	if LandingPage?.backgroundImage
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


#
# Services Template
#
Template.lpStartBootstrapAgencyServices.helpers
  heading: ->
    parseText 'sections.services.heading'
  subHeading: ->
    parseText 'sections.services.subHeading'
  columns: ->
    parseText 'sections.services.columns'
  columnClass: ->
    n = parseText("sections.services.columns").length
    "col-md-#{12/n}"

#
# Portforlio Template handlers
#
Template.lpStartBootstrapAgencyPortfolio.helpers
  heading: ->
    parseText 'sections.portfolio.heading'
  subHeading:
    parseText 'sections.portfolio.subHeading'
  projects: ->
    parseText 'sections.portfolio.works'
  itemClass: ->
    w = parseText("sections.portfolio.works").length
    w = if w <= 3 then (12 / w) else 3
    n = parseText("sections.portfolio.noOfColumns") || w
    "col-md-#{n}"

#
#
# About Template helpers
#
Template.lpStartBootstrapAgencyAboutUs.helpers
  heading: ->
    parseText 'sections.about.heading'
  subHeading: ->
    parseText 'sections.about.subHeading'
  timeline: ->
    parseText 'sections.about.timeline'
  lastWords: ->
    parseText 'sections.about.lastWords'
  isOdd: ->
    (_.indexOf(parseText("sections.about.timeline"), @) + 1) % 2 == 1


#
#
# Team Template helpers
#
Template.lpStartBootstrapAgencyTeam.helpers
  heading:
    parseText "sections.team.heading"
  subHeading:
    parseText "sections.team.subHeading"
  members: ->
    parseText "sections.team.details"
  bottomText: ->
    parseText "sections.team.bottomText"
  itemClass: ->
    w = parseText("sections.team.details").length
    w = if w <= 4 then (12 / w) else 3
    n = parseText("sections.team.noOfColumns") || w
    "col-sm-#{n}"

#
#
# clients template
#
Template.lpStartBootstrapAgencyClients.helpers
  'clients': ->
    parseText "sections.clients.list"

  'itemClass': ->
    len = parseText("sections.clients.list").length
    len = (len + 1) if len % 2 != 0
    "col-md-#{12/len}"

#
#
# contact us template
#
Template.lpStartBootstrapAgencyContactUs.helpers
  'heading': ->
    parseText "sections.contact.heading"
  'subHeading': ->
    parseText 'sections.contact.subHeading'

Template.lpStartBootstrapAgencyFooter.helpers
  facebook: ->
    parseText 'sections.footer.social.facebook'
  twitter: ->
    parseText 'sections.footer.social.twitter'
  linkedIn: ->
    parseText 'sections.footer.social.linkedIn'
  github: ->
    parseText 'sections.footer.social.github'
  googlePlus: ->
    parseText 'sections.footer.social.googlePlus'
  year: ->
    moment().year()
  privacy: ->
    parseText 'sections.footer.privacy'
  terms: ->
    parseText 'sections.footer.terms'
