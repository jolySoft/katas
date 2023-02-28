namespace Diamond;

public interface IEither<out TLeft, out TRight>
{

    TLeft Sad { get; }
    TRight Happy { get; }

    bool IsLeft => Sad != null;
    bool IsRight => Happy != null;
}