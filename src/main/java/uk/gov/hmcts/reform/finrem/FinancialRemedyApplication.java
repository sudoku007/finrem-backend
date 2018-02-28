package uk.gov.hmcts.reform.finrem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;

@SpringBootApplication
@EnableCircuitBreaker
@EnableHystrixDashboard
@SuppressWarnings("HideUtilityClassConstructor")
public class FinancialRemedyApplication {

    public static void main(String[] args) {
        SpringApplication.run(FinancialRemedyApplication.class, args);
    }
}
