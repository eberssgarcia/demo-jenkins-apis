package bdd;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;


import java.util.logging.Logger;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static util.cucumberReport.generateReport;

public class labsTest {

    private static final Logger logger = Logger.getLogger(labsTest.class.getName());

    @BeforeAll
    static void beforeAll() {
        logger.info("BEFORE ALL");
    }

    @AfterAll
    static void afterAll() {
        logger.info("AFTER ALL");
    }

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:bdd")
//                .tags("@token")
                .outputCucumberJson(true).parallel(5);
        generateReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }


}
