package org.example.dangerzonejava.controller;

import lombok.RequiredArgsConstructor;
import org.example.dangerzonejava.services.TripsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequiredArgsConstructor
public class MainController {

    private final TripsService tripsService;

    @GetMapping
    public String index(Model model) {
        model.addAttribute("trips", tripsService.getTrips());
        return "index";
    }

    @GetMapping("/trip/{id}")
    public String detailsPage(Model model, @PathVariable String id){
        return "trip-details";
    }



}
