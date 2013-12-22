'use strict'

angular.module('giftcertificatesApp')
.controller 'MainCtrl', ($scope, $sce, $window) ->
  $scope.cert =
    title: 'Gift Certificate'
    email: 'bradyisom@gmail.com'

  $scope.formChanged = ->
    $scope.image = null
    $scope.emailLink = null

  $scope.generate = ->
    html2canvas(angular.element('.cert-preview'),
      onrendered: (canvas)->
        $scope.$apply ->
          dataUrl = canvas.toDataURL()
          $scope.image = $sce.trustAsResourceUrl dataUrl
    )

  $scope.sendEmail = ->
    $window.open $scope.emailUrl
