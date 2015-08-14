Package.describe({
  name: 'landing-page:startbootstrap-agency',
  version: '0.0.1',
  // Brief, one-line summary of the package.
  summary: 'Startbootstrap-agency landing page template for meteor',
  // URL to the Git repository containing the source code for this package.
  git: '',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Package.onUse(function(api) {

  // Dependencies
  api.use('coffeescript');
  api.use('iron:router');
  api.use(['templating', 'less', 'twbs:bootstrap', 'fortawesome:fontawesome'], 'client');
  api.versionsFrom('1.1.0.2');

  //api.export('LandingPageDefault', ['client']);

  // add resources
  api.addFiles(['lib/client/img/header-bg.jpg'], 'client');
  api.addFiles(['lib/both/_config/config.coffee']);

  // add less files
  api.addFiles(['lib/client/less/agency.less'], 'client');

  //add html files
  api.addFiles([
    'lib/client/layout.html',

    //add template files
    'lib/client/templates/header.html',
    'lib/client/templates/navbar.html',
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
  api.use('landing-page:startbootstrap-agency');
});
