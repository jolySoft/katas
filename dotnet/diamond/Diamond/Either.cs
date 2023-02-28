namespace Diamond;

public class Either<TSad, THappy> : IEither<TSad, THappy>
{
    public TSad? Sad { get; private set; }

    public THappy? Happy { get; private set; }


    private Either(TSad left)
    {
        Sad = left;
    }

    private Either(THappy right)
    {
        Happy = right;
    }

    public static Either<TSad, THappy> Left(TSad left)
    {
        return new Either<TSad, THappy>(left);
    }

    public static Either<TSad, THappy> Right(THappy right)
    {
        return new Either<TSad, THappy>(right);
    }

}