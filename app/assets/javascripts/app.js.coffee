WedLab = angular.module "WedLab", []

WedLab.controller "IndexCtrl", ['$scope', ($scope) ->
  $scope.checked = true
  secret = "secret"

  $scope.$watch "typing", ->
    console.log($scope.count)
    if $scope.typing == secret
      $scope.notice = "You got it!"

  $scope.$watch "count", ->
    console.log('inside')
    if $scope.count == 20
      $scope.notice = "This is wrong sorry, answer #{secret}"

  $scope.favoriteMovies = [{
    title: "Titanic",
    release: "January 17, 1998"
  },
  {
    title: "The Matrix",
    release: "October 1, 1999"
  },
  {
    title: "Sharknado",
    release: "April 1, 2009"
  },
  {
    title: "Aladdin",
    release: "March 9, 1990"
  }]
  $scope.removeMovie = (movie) ->
    $scope.favoriteMovies.splice($scope.favoriteMovies.indexOf(movie), 1)
  
]
WedLab.filter 'reverse', ->
  (input) -> 
    input = input || '';
    input.split("").reverse().join("")