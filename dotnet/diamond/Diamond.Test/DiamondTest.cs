using Shouldly;
using Xunit.Abstractions;

namespace Diamond.Test;

public class DiamondTest
{
    private DiamondBuilder builder = new();
    private readonly ITestOutputHelper output;


    public DiamondTest(ITestOutputHelper output)
    {
        this.output = output;
    }

    [Fact]
    public void Should_build_e_diamond()
    {
        var eDiamond = builder.Create('e');

        //eDiamond.ForEach(ln => output.WriteLine(ln));

        eDiamond[0].ShouldBe("    a");
        eDiamond[1].ShouldBe("   b b");
        eDiamond[2].ShouldBe("  c   c");
        eDiamond[3].ShouldBe(" d     d");
        eDiamond[4].ShouldBe("e       e");
        eDiamond[5].ShouldBe(" d     d");
        eDiamond[6].ShouldBe("  c   c");
        eDiamond[7].ShouldBe("   b b");
        eDiamond[8].ShouldBe("    a");
    }

}