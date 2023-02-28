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
            if (!string.IsNullOrWhiteSpace(input))
            {
                var result = diamondBuilder.Create(input[0]);
                if (result.IsRight)
                {
                    result.Happy.ForEach(Console.WriteLine);
                }
                else
                {
                    Console.WriteLine(result.Sad);
                }
            }
        }
    }
}