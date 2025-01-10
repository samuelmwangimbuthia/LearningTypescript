let a : Object = {
    b : {k:'x'},
}

type c = {firstName: string, lastName?: string} 
let d :  c = {firstName: 'john'}


class Person {
    constructor(
        public firstName: string,
        public lastName: string
    ){}
}

let e = new Person('matt', 'smith')

//Object Literal Notation
let danger = {}
danger = {}
danger = {x:1}
let arrayA = [1,2,3]
let arrayb = ['a','b',3]

arrayb.push('c')

let mapArrayb : (string | number)[]
mapArrayb  =  arrayb.map(_=>{
    if(typeof _ === 'number'){
        return _ * 3;
    }
    return _.toLocaleUpperCase();
})

console.log(mapArrayb)

//Tuples