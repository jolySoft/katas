package tv.webenabled.test;

import org.junit.jupiter.api.Test;
import tv.webenabled.main.DiamondBuilder;

import static org.assertj.core.api.Assertions.*;

public class DiamondBuilderTest {

    @Test
    public void shouldBuildDepthOfEDiamond() {
        var diamondBuilder = new DiamondBuilder();

        String[] eDiamond = diamondBuilder.build('e');

        assertThat(eDiamond.length).isEqualTo(9);
    }

    @Test
    public void shouldBuildFirstLineOfEDiamond() {
        var diamondBuilder = new DiamondBuilder();

        String[] eDiamond = diamondBuilder.build('e');

        assertThat(eDiamond[0]).isEqualTo("    a    ");
    }

    @Test
    public void shouldBuildFifthLineOfEDDiamond() {
        var diamondBuilder = new DiamondBuilder();

        String[] eDiamond = diamondBuilder.build('e');

        assertThat(eDiamond[0]).isEqualTo("    a    ");
        assertThat(eDiamond[1]).isEqualTo("   b b   ");
        assertThat(eDiamond[2]).isEqualTo("  c   c  ");
        assertThat(eDiamond[3]).isEqualTo(" d     d ");
        assertThat(eDiamond[4]).isEqualTo("e       e");
    }

    @Test
    public void shouldBuildEDiamond() {
        var diamondBuilder = new DiamondBuilder();

        String[] eDiamond = diamondBuilder.build('e');

        assertThat(eDiamond[0]).isEqualTo("    a    ");
        assertThat(eDiamond[1]).isEqualTo("   b b   ");
        assertThat(eDiamond[2]).isEqualTo("  c   c  ");
        assertThat(eDiamond[3]).isEqualTo(" d     d ");
        assertThat(eDiamond[4]).isEqualTo("e       e");
        assertThat(eDiamond[5]).isEqualTo(" d     d ");
        assertThat(eDiamond[6]).isEqualTo("  c   c  ");
        assertThat(eDiamond[7]).isEqualTo("   b b   ");
        assertThat(eDiamond[8]).isEqualTo("    a    ");
    }
}
