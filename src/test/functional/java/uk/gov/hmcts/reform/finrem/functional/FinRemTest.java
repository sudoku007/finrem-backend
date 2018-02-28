package uk.gov.hmcts.reform.finrem.functional;

import io.restassured.RestAssured;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static io.restassured.RestAssured.get;

public class FinRemTest {

    private static final Logger log = LoggerFactory.getLogger(FinRemTest.class);

    @Before
    public void before() {
        String appUrl = System.getenv("TEST_URL");
        if (appUrl == null) {
            appUrl = "http://localhost:8085";
        }

        RestAssured.baseURI = appUrl;
        RestAssured.useRelaxedHTTPSValidation();
        log.info("Base Url set to: " + RestAssured.baseURI);
    }

    @Test
    public void serviceReturns200() {
        get("/service").then().statusCode(200);
    }
}
