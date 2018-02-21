package uk.gov.hmcts.reform.fr.controllers;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(
    path = "/",
    produces = { MediaType.APPLICATION_JSON_VALUE }
)
public class FinancialRemedyController {

    @GetMapping(path = "/service")
    @ApiOperation("API operation description")
    @ApiResponses({
        @ApiResponse(code = 200, message = "Success"),
    })
    public String start() {
        return "Financial Remedy";
    }
}
