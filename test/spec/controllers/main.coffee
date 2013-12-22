'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'giftcertificatesApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

  it 'should attach a list of templates to the scope', () ->
    expect(scope.templates.length).toBe 2
