import { DiamondCalculator } from './diamondCalculator.js';
import prompt from "prompt-sync";

console.log(String.raw`________  .__                                  .___`);
console.log(String.raw`\______ \ |__|____    _____   ____   ____    __| _/`);
console.log(String.raw` |    |  \|  \__  \  /     \ /  _ \ /    \  / __ |`);
console.log(String.raw` |    '   \  |/ __ \|  Y Y  (  <_> )   |  \/ /_/ | `);
console.log(String.raw`/_______  /__(____  /__|_|  /\____/|___|  /\____ | `);
console.log(String.raw`        \/        \/      \/            \/      \/ `);
console.log("")
console.log("Welcome to diamond kata written in JavaScript!")
while(true) {
    let char = prompt("Please enter a charater to draw a diamond with:");
    DiamondCalculator(char);
}

