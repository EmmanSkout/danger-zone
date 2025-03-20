package org.example.dangerzonejava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping
    public String index(Model model) {
        return "index";
    }

    @GetMapping
    public String detailsPage(Model model){
        return "trip-details";
    }



}
