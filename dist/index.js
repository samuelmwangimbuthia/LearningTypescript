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
let arrayA = [1, 2, 3];
let arrayb = ['a', 'b', 3];
arrayb.push('c');
let mapArrayb;
mapArrayb = arrayb.map(_ => {
    if (typeof _ === 'number') {
        return _ * 3;
    }
    return _.toLocaleUpperCase();
});
console.log(mapArrayb);
//# sourceMappingURL=index.js.map