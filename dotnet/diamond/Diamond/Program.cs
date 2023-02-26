namespace Diamond;

public class Program
{ 
    static void Main(string[] args)
    {
        var diamondBuilder = new DiamondBuilder();
        Console.WriteLine("Welome to diamond builder.net please enter a character to build the diamond with, press ctl+c to quit");

        while (true)
        {
            Console.WriteLine("Please enter a character: ");
            var input = Console.ReadLine();
            var result = diamondBuilder.Create(input[0]);
            result.ForEach(Console.WriteLine);
        }
    }
}