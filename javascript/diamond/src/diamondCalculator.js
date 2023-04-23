export const DiamondCalculator = (input) => {
    let startingChar = input.toLowerCase();
    if (startingChar === 'a') return "The character 'a' isn't enough to draw a triangle";

    let aCharCode = "a".charCodeAt(0);
    let middleCharCode = startingChar.charCodeAt(0);
    let difference = middleCharCode - aCharCode;

    let diamond = [];

    for (let i = difference; i >= 0; i--) {
        let spaceCounter = difference-i;
        let line = " ".repeat(spaceCounter) + String.fromCharCode(middleCharCode-spaceCounter) + " ".repeat(i);
        if(i !== 0) {
            let reversie = [...line].reverse();
            reversie.shift();
            line += reversie.join("");
        }
        diamond.unshift(line);

        if (i !== difference) {
            diamond.push(line);
        }
    }

    return diamond;
}