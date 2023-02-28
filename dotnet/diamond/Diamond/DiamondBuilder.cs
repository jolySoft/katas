using System.ComponentModel;

namespace Diamond;

public class DiamondBuilder
{
    public IEither<string, List<string>> Create(object input)
    {
        try
        {
            var inputChar = (char)input;
            if (inputChar == 'a' || inputChar == 'A')
                return Either<string, List<string>>.Left("Character 'a' is not enough to create triangle");
            if (!char.IsLetter(inputChar))
                return Either<string, List<string>>.Left("No numbers just a single character");

            return Either<string, List<string>>.Right(Create(inputChar));

        }
        catch (InvalidCastException)
        {
            return Either<string, List<string>>.Left("Input not a character");
        }
    }

    private List<string> Create(char c)
    {
        var asciiCodes = Enumerable.Range(97, 26).ToList();
        List<int> odds = new(); 
        List<string> output = new();
        var end = (int)c - 97;
        var topAndTail = new string(' ', end) + "a";

        for (int i = 1; i<= end; i++)
        {
            output.Add(new string(' ', end - i) + Convert.ToChar((char)asciiCodes[i]) + new string(' ', output.Count + i) + Convert.ToChar((char)asciiCodes[i]));
        }

        output.Insert(0, topAndTail);

        List<string> bottomList = new List<string>(output);
        bottomList.Reverse();
        Queue<string> bottomStack = new Queue<string>(bottomList);
        bottomStack.Dequeue();
        output.AddRange(bottomStack);
        return output;
    }
}