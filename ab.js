d=$$('.title').reduce((a,i,n)=>
{
    
a+=`${i.textContent} index: ${n}`  +"\n"

return a 
}
,'')
copy (d)