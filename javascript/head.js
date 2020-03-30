he = document.querySelector('.head')
ri = document.querySelector('.right')
al = document.querySelector('.a-l')


function nav(e){ 
    var bt = he.getBoundingClientRect().bottom;
    if(document.body.getBoundingClientRect().top < -50){
        he.children[0].innerHTML = 'Herbal Repository'
        he.children[0].style.fontSize = '1.5em'
        ri.classList.add('right-s')
        al.classList.add('a-l-s')

    }
    if(document.body.getBoundingClientRect().top> -50){
        he.children[0].innerHTML = 'Herbal </br> Repository'
        he.children[0].style.fontSize = '1.8em'
        ri.classList.remove('right-s')
        al.classList.remove('a-l-s')
        
    }
    console.log(document.body.getBoundingClientRect().top)
}


window.addEventListener('scroll',nav)