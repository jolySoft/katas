package tv.webenabled;

public class DiamondBuilder {
    private static String alphabet = "abcdefghijklmnopqrstuvwxyz";

    private int[] odds;

    public DiamondBuilder() {
        odds = new int[26];

        for (var i = 0; i < odds.length; i++) {
            odds[i] = 2 * i + 1;
        }
    }

    public String[] build(char startCharacter) {
        var charIndex = alphabet.indexOf(startCharacter);
        var charNumber = charIndex + 1;
        var depth = (charNumber * 2) - 1;
        String lines[] = new String[depth];

        for (int i = 0; i < charNumber; i++) {
            var currentChar = alphabet.charAt(i);
            if (currentChar == 'a') {
                lines[0] = " ".repeat(charIndex) + "a" + " ".repeat(charIndex);
                lines[depth-1] = lines[0];
                continue;
            }

            lines[i] = " ".repeat(charIndex-i) + currentChar + " ".repeat(odds[i-1]) + currentChar + " ".repeat(charIndex-i);
            lines[(depth-1)-i] = lines[i];
        }

        return lines;
    }

}
