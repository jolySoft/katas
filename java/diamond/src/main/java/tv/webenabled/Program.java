package tv.webenabled;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Program {

    public static void main(String[] args) throws IOException {
        var diamondBuilder = new DiamondBuilder();
        BufferedReader reader = new BufferedReader(
                new InputStreamReader(System.in));

        System.out.println("At anytime hit '!' to end.");
        while(true) {
            System.out.print("Please Enter a starting Charater: ");
            var characterString = reader.readLine();
            var character = Character.toLowerCase(characterString.charAt(0));

            if(character == '!') return;

            if(Character.isDigit(character) || !Character.isLetter(character)) continue;

            var diamond = diamondBuilder.build(character);
            Arrays.stream(diamond).forEach(System.out::println);
        }
    }
}
