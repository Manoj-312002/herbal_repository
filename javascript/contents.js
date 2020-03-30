s = document.querySelector('.side')
cont = document.querySelector('.contents')
op = document.querySelector('.open')
// inf = document.querySelector('.info')

function cardclick(e){
    var a = e.target.parentElement
    var b = a.parentElement
    console.log(a)
    b.classList.add('card-m')
    b.children[1].classList.add('im-m')
    a.classList.add('c-head-m')
    a.children[2].classList.add('info-m')
    cont.classList.add('contents-m')
    s.classList.add('side-m')
    op.style.visibility = 'visible'    
    // inf.style.display = 'block'    
}

function cardback(){
    var b = document.querySelector('.card-m')
    var a = document.querySelector('.c-head-m')

    b.classList.remove('card-m')
    b.children[1].classList.remove('im-m')
    a.classList.remove('c-head-m')
    a.children[2].classList.remove('info-m')
    cont.classList.remove('contents-m')
    s.classList.remove('side-m')
    op.style.visibility = 'hidden'    
    // inf.style.display = 'none'
}




