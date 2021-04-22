#!/usr/bin/js
const one = +true; //This would return 1 (Unary and boolean operator)
const zero = +false; // This would return 0 (Unary and boolean operator)
//Using string operations apending 1 and 0 and 0 to form "100"
const hundredInString = one.toString() + zero.toString() + zero.toString();

// To save the day for not using the loop, we are using recursion function.
const printInRecursion = (index) => {
    if (index <= parseInt(hundredInString)) {
        console.log(index);
        printInRecursion(index + one);
    }

    return
}

printInRecursion(parseInt(one))
