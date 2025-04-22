package bdd;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import org.junit.jupiter.api.Test;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static util.cucumberReport.generateReport;

public class labsTest {


    @Test
    void testParallel() {
        Results results = Runner.path("classpath:bdd")
//                .tags("@token")
                .outputCucumberJson(true).parallel(5);
        generateReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }


}
