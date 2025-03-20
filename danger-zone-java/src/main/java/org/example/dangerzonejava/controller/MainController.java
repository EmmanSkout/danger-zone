package org.example.dangerzonejava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class MainController {

    @GetMapping
    public String index(Model model) {
        return "index";
    }

    @GetMapping("/trip/{id}")
    public String detailsPage(Model model, @PathVariable String id){
        return "trip-details";
    }



}
