var raj = document.querySelectorAll('.card');

var tp = raj[0].getBoundingClientRect().top; 
var sp = window.innerHeight/2

if (tp<sp){
    raj[0].classList.add('card-s')        
}

function scrollAppear(){
    raj.forEach((a)=>{
    
        var sp = window.innerHeight/1.2
        var tp = a.getBoundingClientRect().top; 


        if (tp<sp){
            a.classList.add('card-s')        
        }
    })
}


window.addEventListener('scroll',scrollAppear);

