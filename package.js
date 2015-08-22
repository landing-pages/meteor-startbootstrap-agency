Package.describe({
  name: 'landingpages:startbootstrap-agency',
  version: '0.0.4',
  // Brief, one-line summary of the package.
  summary: 'Startbootstrap-agency landing page template for meteor',
  // URL to the Git repository containing the source code for this package.
  git: 'https://github.com/snamoah/meteor-startbootstrap-agency',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Package.onUse(function(api) {

  // Dependencies
  api.use('coffeescript@1.0.6');
  api.use('iron:router@1.0.9');
  api.use(['templating', 'less', 'twbs:bootstrap@3.3.5', 'fortawesome:fontawesome@4.4.0', 'mrt:moment@2.1.0'], 'client');
  api.use('erasaur:meteor-lodash@0.1.0');
  api.versionsFrom('1.1.0.2');

  //api.export('LandingPageDefault', ['client']);

  // add resources
  api.addFiles([
    'lib/client/img/header-bg.jpg',

    //portfolio images
    'lib/client/img/portfolio/treehouse.png',
    'lib/client/img/portfolio/golden.png',
    'lib/client/img/portfolio/escape.png',
    'lib/client/img/portfolio/dreams.png',
    'lib/client/img/portfolio/startup-framework.png',
    'lib/client/img/portfolio/roundicons.png',

    // about section images
    'lib/client/img/about/1.jpg',
    'lib/client/img/about/2.jpg',
    'lib/client/img/about/3.jpg',
    'lib/client/img/about/4.jpg',
    

    // team section images
    'lib/client/img/team/1.jpg',
    'lib/client/img/team/2.jpg',
    'lib/client/img/team/3.jpg',
    
    // clients section images
    'lib/client/img/logos/envato.jpg',
    'lib/client/img/logos/designmodo.jpg',
    'lib/client/img/logos/themeforest.jpg',
    'lib/client/img/logos/creative-market.jpg'
  ], 'client');
  api.addFiles(['lib/both/_config/config.coffee']);

  // add less files
  api.addFiles(['lib/client/less/agency.less'], 'client');

  //add html files
  api.addFiles([
    'lib/client/layout.html',

    //add template files
    'lib/client/templates/header.html',
    'lib/client/templates/navbar.html',
    'lib/client/templates/services.html',
    'lib/client/templates/portfolio.html',
    'lib/client/templates/about.html',
    'lib/client/templates/team.html',
    'lib/client/templates/clients.html',
    'lib/client/templates/contact.html',
    'lib/client/templates/footer.html',
    'lib/client/templates/modals.html',
    'lib/client/startbootstrap-agency.html',
  ], 'client');
 

  // add js files
  api.addFiles([
    'lib/client/js/cbpAnimatedHeader.js',
    'lib/client/js/classie.js',
    'lib/client/js/lodash.min.js'
  ], 'client');
  api.addFiles(['lib/client/startbootstrap-agency.coffee'], 'client');

  //add router files
  api.addFiles(['lib/both/router/router.coffee']);

});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('landingpages:startbootstrap-agency');
});
