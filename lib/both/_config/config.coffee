config =
  appName: "Start Bootstrap"
  #backgroundImage: '/img/background-intro.jpg'
  intro:
    leadIn: 'Welcome to our Studio!'
    heading: "it's nice to meet you"
    button:
      buttonText: "tell me more"
      buttonUrl: "#services"

  sections:
    #
    # services section
    #
    services:
      visible: true
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
      visible: true
      heading: 'Portfolio'
      subHeading: 'Lorem ipsum dolor sit amet consectetur.'
      works: [
        { name: 'Project Name', client: 'Round Icons', category: 'Graphic Design', tagline: 'Lorem ipsum dolor sit amet consectetur.', description: 'Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!', date: 'July 2014', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/portfolio/roundicons.png'}
        { name: 'Project Name', client: 'Startup Framework', category: 'Web Design', tagline: 'Lorem ipsum dolor sit amet consectetur.', description: 'Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!', date: 'July 2014', img: '/packages/landing-page_startbootstrap-agency/lib/client/img/portfolio/startup-framework.png'}
      ]
    
    #
    # about section
    #
    #
    about:
      visible: true
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
LandingPageDefault = LandingPageDefault || config
