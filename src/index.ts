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
let arrayA = [1,2,3,4,5,6]
let arrayb : [string,...string[],number ] = ['a','b',3]

function newLength(oldArray : number[]){
   return oldArray.splice(2)
}

console.log (`you have deleted ${newLength(arrayA)}`);

let mapArrayb : (string | number)[]
mapArrayb  =  arrayb.map(_=>{
    if(typeof _ === 'number'){
        return _ * 3;
    }
    return _.toLocaleUpperCase();
})

console.log(mapArrayb)

//Tuples
/* they are subtypes of array. They are a special way to type arrays
that have specific length where the values at each index have specific 
known types.
Tuples have to be explicitly typed when being declared.
*/

let as: readonly number[] = [1,2,3];
let bs : readonly number[] = as.concat(4);
console.log(bs)

enum Language {
    English,
    Spanish,
    Russian
}

console.log(Language.English)

let a2 = 1042;
let b2 = 'apples and mangos';
const c2 = 'pineapples';
let d2 = [true,true,false]
let e2 = {type: 'ficus'}
const g2 = [2];
let h = null;