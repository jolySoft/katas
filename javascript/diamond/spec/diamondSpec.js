import { DiamondCalculator } from '../src/diamondCalculator.js';
describe('Diamond Drawer', () => {
    it('does not draw with an A entered', () => {
        let response = DiamondCalculator("A");

        expect(response).toBe("The character 'a' isn't enough to draw a triangle")
    });

    it('does draw quarter when a C is entered', () => {
        let response = DiamondCalculator("C");

        expect(response[0]).toContain("  a");
        expect(response[1]).toContain(" b ");
        expect(response[2]).toContain("c  ");
    });

    it("does draw half when D is entered", () => {
        let response = DiamondCalculator("d");

        expect(response[0]).toBe("   a");
        expect(response[1]).toBe("  b b  ");
        expect(response[2]).toBe(" c   c ");
        expect(response[3]).toBe("d     d")
    });

    it("does draw diamond when a K is entered", () => {
        let response = DiamondCalculator("K")
        // expect(response[0]).toBe("          a");
        // expect(response[1]).toBe("         b b         ");
        // expect(response[2]).toBe("        c   c        ");
        // expect(response[3]).toBe("       d     d       ")
        // expect(response[4]).toBe("      e       e      ")
        // expect(response[5]).toBe("     f         f     ")
        // expect(response[6]).toBe("    g           g    ")
        // expect(response[7]).toBe("   h             h   ")
        // expect(response[8]).toBe("  i               i  ")
        // expect(response[9]).toBe(" j                 j ")
        // expect(response[10]).toBe("k                   k")
        // expect(response[11]).toBe(" j                 j ")
        // expect(response[12]).toBe("  i               i  ")
        // expect(response[13]).toBe("   h             h   ")
        // expect(response[14]).toBe("    g           g    ")
        // expect(response[15]).toBe("     f         f     ")
        // expect(response[16]).toBe("      e       e      ")
        // expect(response[17]).toBe("       d     d       ")
        // expect(response[18]).toBe("        c   c        ");
        // expect(response[19]).toBe("         b b         ");
        // expect(response[20]).toBe("          a");





    })
})