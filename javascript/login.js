var app = angular.module('login', []);
var preg = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
var mreg = new RegExp("^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})");

const p = document.querySelectorAll('p')

app.controller('mc', function($scope) {
    

    $scope.ch = (event)=>{
        $scope.class = 'danger'
        if($scope.user.length > 5){
            $scope.class = 'ok'
        }
    }
    
    $scope.pch = (event)=>{
        if($scope.passa.match(preg)) {
            $scope.pass = "ok";
        } else if($scope.passa.match(mreg)) {
            $scope.pass = "med";
        } else {
            $scope.pass = "danger";
        }
    };
    
    $scope.validateForm = (e)=>{
        console.log('hi')
        if($scope.class != 'ok'){
            p[0].style.visibility = 'visible'
            e.preventDefault()
        }
        else if($scope.pass != 'ok'){
            p[1].style.visibility = 'visible'
            e.preventDefault()
        }else{
            return true
        }
        
        
    }

    
});
