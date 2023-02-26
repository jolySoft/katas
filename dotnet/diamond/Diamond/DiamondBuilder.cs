namespace Diamond;

public class DiamondBuilder
{
    public List<string> Create(char c)
    {
        var asciiCodes = Enumerable.Range(97, 26).ToList();
        List<int> odds = new(); 
        List<string> output = new();
        var end = (int)c - 97;
        var topAndTail = new string(' ', end) + "a";

        //output.Add(topAndTail);

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