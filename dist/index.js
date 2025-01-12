"use strict";
let a = {
    b: { k: 'x' },
};
let d = { firstName: 'john' };
class Person {
    firstName;
    lastName;
    constructor(firstName, lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }
}
let e = new Person('matt', 'smith');
//Object Literal Notation
let danger = {};
danger = {};
danger = { x: 1 };
let arrayA = [1, 2, 3, 4, 5, 6];
let arrayb = ['a', 'b', 3];
function newLength(oldArray) {
    return oldArray.splice(2);
}
console.log(`you have deleted ${newLength(arrayA)}`);
let mapArrayb;
mapArrayb = arrayb.map(_ => {
    if (typeof _ === 'number') {
        return _ * 3;
    }
    return _.toLocaleUpperCase();
});
console.log(mapArrayb);
//Tuples
/* they are subtypes of array. They are a special way to type arrays
that have specific length where the values at each index have specific
known types.
Tuples have to be explicitly typed when being declared.
*/
let as = [1, 2, 3];
let bs = as.concat(4);
console.log(bs);
var Language;
(function (Language) {
    Language[Language["English"] = 0] = "English";
    Language[Language["Spanish"] = 1] = "Spanish";
    Language[Language["Russian"] = 2] = "Russian";
})(Language || (Language = {}));
console.log(Language.English);
//# sourceMappingURL=index.js.map