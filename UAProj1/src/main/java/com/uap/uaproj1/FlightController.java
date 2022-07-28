package com.uap.uaproj1;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FlightController {
    @RequestMapping("/flights")
    public String flights()
    {
        return "There are no flights at this time";
    }
}
