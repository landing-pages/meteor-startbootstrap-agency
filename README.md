# Startbootstrap Agency template #

### Description ###

This package wraps allows you to use startbootstrap agency te!plate just by installing it. It is fully configurable so you can change images, links, colors etc and make it your own without having to worry about JavaScript CSS imports. Just change the configuration file and you're good to go... :)


### Installation ###
```
$ meteor add landing-pages:startbootstrap-agency
```

### Configuration ###

```coffescript

###
To configure the template, create a LandingPage object. You can alter any of the following fields or omit as necessary:
###

@LandingPage =
  appName: "Start Bootstrap"
  backgroundImage: '' # set background image for header
  intro:
    leadIn: "welcome to our studio!"      # cursive text on the header
    heading: "it's nice to meet you"      # main header text
    button:
      buttonText: "tell me more"        # button properties
      buttonUrl: "#services"          # action url on button click

  sections:
    #
    # services section
    #
    services:
      visible: true
      navName: 'services'
      heading: 'Services'
      subHeading: 'Lorem ipsum dolor sit amet consectetur.'
      columns: [
        {icon: 'fa-shopping-cart', title: 'E-Commerce', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.'}
        {icon: 'fa-laptop', title: 'Responsive Design', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.'}
        {icon: 'fa-lock', title: 'Web Security', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.'}
      ]

    #
    # portfolio section
    #
    portfolio:
      navName: 'portfolio'
      visible: true
      heading: 'Portfolio'
      subHeading: 'Lorem ipsum dolor sit amet consectetur.'
      works: [
        { name: 'Project Name', client: 'Round Icons', category: 'Graphic Design', tagline: 'Lorem ipsum dolor sit amet consectetur.', description: 'Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!', date: 'July 2014', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/portfolio/roundicons.png'}
        { name: 'Project Name', client: 'Startup Framework', category: 'Web Design', tagline: 'Lorem ipsum dolor sit amet consectetur.', description: 'Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!', date: 'July 2014', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/portfolio/startup-framework.png'}
        { name: 'Project Name', client: 'Treehouse', category: 'Web Design', tagline: 'Lorem ipsum dolor sit amet consectetur.', description: 'Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!', date: 'July 2014', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/portfolio/treehouse.png'}
        { name: 'Project Name', client: 'Golden', category: 'Web Design', tagline: 'Lorem ipsum dolor sit amet consectetur.', description: 'Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!', date: 'July 2014', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/portfolio/golden.png'}
        { name: 'Project Name', client: 'Escape', category: 'Web Design', tagline: 'Lorem ipsum dolor sit amet consectetur.', description: 'Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!', date: 'July 2014', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/portfolio/escape.png'}
        { name: 'Project Name', client: 'Dreams', category: 'Web Design', tagline: 'Lorem ipsum dolor sit amet consectetur.', description: 'Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!', date: 'July 2014', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/portfolio/dreams.png'}
      ]
    
    #
    # about section
    #
    #
    about:
      visible: true
      navName: 'about'
      heading: 'About Us'
      subHeading: 'Lorem ipsum dolor sit amet consectetur.'
      #noOfColumns: 3
      timeline: [
        { date: '2009-2011', title: 'Our Humble Beginnings', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/about/1.jpg'}
        { date: 'MARCH 2011', title: 'An Agency is Born', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/about/2.jpg'}
        { date: 'December 2012', title: 'Transition to Full Service', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/about/3.jpg'}
        { date: 'July 2014', title: 'Phase Two Expansion', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!', img: '/img/about/4.jpg'}
      ]
      lastWords: "Be Part Of Our Story!"

    #
    #
    # Team section
    #
    #
    team:
      visible: true
      navName: 'team'
      heading: 'The Team'
      subHeading: 'Lorem ipsum dolor sit amet consectetur.'
      details: [
        {name: 'Kay Garland', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/team/1.jpg', position: 'Lead Designer', facebookUrl: '#', linkedinUrl: '#', twitterUrl: '#'}
        {img: '/packages/landing-page_startbootstrap-agency/lib/client/img/team/2.jpg', name: 'Larry Parker', position: 'Lead Marketer', facebookUrl: '#', linkedinUrl: '#', twitterUrl: '#'}
        {name: 'Diana Pertersen', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/team/3.jpg', position: 'Lead Developer', facebookUrl: '#', linkedinUrl: '#', twitterUrl: '#'}
      ]

    #
    #
    # clients section
    #
    clients: 
      visible: true
      list: [
        {imgUrl: 'img/logos/envato.jpg'}
        {imgUrl: 'img/logos/designmodo.jpg'}
        {imgUrl: 'img/logos/themeforest.jpg'}
        {imgUrl: 'img/logos/creative-market.jpg'}
      ]

    #
    #
    # contact us section
    #
    contact:
      navName: 'contact'
      visible: true
      heading: 'Contact Us'
      subHeading: 'Lorem ipsum dolor sit amet consectetur.'


    #
    # footer
    #
  footer:
    visible: true
    social:
      facebook: '#'
      twitter: '#'
      linkedIn: '#'
      # github: '#'
      # googlePlus: '#'
    privacy:
      visible: true
      url: '#'
    terms:
      visible: true
      url: '#'

```

The template is divided into different sections: services, portfolio, about, team, client, contact. You can customize the various sections interms of text, and display. 

To prevent a section from not showing, just don't add it to the object. 

All sections have their corresponding navbar items. to prevent a section from being added to the navbar, don't add it to the section.


**Example 1**

```coffeescript
###
This configuration creates the header with the custom text and image with the footer having my facebook and twitter link
###
@LandingPage =
  backgroundImage: '/img/background.png'
  appName: 'My App'
  intro:
    leadIn: 'Ever thought about getting your own server?'
    button:
      buttonText: 'Get Started'
      buttonUrl: '/sign-in'
  footer:
    social:
      facebook: 'https://www.facebook.com/samuel.amoah.509'
      twitter: 'https://www.twitter/snamoah'
```
