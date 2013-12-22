'use strict'

angular.module('giftcertificatesApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])
  .config ($routeProvider, $compileProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'

    $compileProvider.aHrefSanitizationWhitelist(
      /^\s*(https?|ftp|mailto|data):/
    )
