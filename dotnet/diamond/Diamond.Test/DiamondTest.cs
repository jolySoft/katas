using Shouldly;
using Xunit.Abstractions;

namespace Diamond.Test;

public class DiamondTest
{
    private readonly DiamondBuilder builder;
    private readonly ITestOutputHelper output;

    public DiamondTest(ITestOutputHelper output)
    {
        this.output = output;
        builder = new DiamondBuilder();
    }

    [Fact]
    public void Should_let_you_know_if_its_not_character()
    {
        byte obj = new();
        var result = builder.Create(obj);

        result.IsLeft.ShouldBe(true);
        result.Sad.ShouldBe("Input not a character");
    }

    [Fact]
    public void should_let_you_know_if_A_passed()
    {
        var result = builder.Create('A');

        result.IsLeft.ShouldBe(true);
        result.Sad.ShouldBe("Character 'a' is not enough to create triangle");
    }

    [Fact]
    public void should_let_you_know_if_number_passed()
    {
        var result = builder.Create('2');
        result.IsLeft.ShouldBe(true);
        result.Sad.ShouldBe("No numbers just a single character");
    }

    [Fact]
    public void Should_build_e_diamond()
    {
        var eDiamond = builder.Create('e');

        //eDiamond.ForEach(ln => output.WriteLine(ln));

        eDiamond.Happy[0].ShouldBe("    a");
        eDiamond.Happy[1].ShouldBe("   b b");
        eDiamond.Happy[2].ShouldBe("  c   c");
        eDiamond.Happy[3].ShouldBe(" d     d");
        eDiamond.Happy[4].ShouldBe("e       e");
        eDiamond.Happy[5].ShouldBe(" d     d");
        eDiamond.Happy[6].ShouldBe("  c   c");
        eDiamond.Happy[7].ShouldBe("   b b");
        eDiamond.Happy[8].ShouldBe("    a");
    }

}