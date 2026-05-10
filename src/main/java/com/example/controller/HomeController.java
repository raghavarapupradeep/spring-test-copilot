package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Home Controller - Handles home page requests
 */
@Controller
public class HomeController {

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("title", "Spring Boot MVC Application");
        model.addAttribute("message", "Welcome to Spring Boot MVC!");
        return "index";
    }

    @GetMapping("/hello")
    public String hello(@RequestParam(name = "name", defaultValue = "World") String name, Model model) {
        model.addAttribute("name", name);
        return "hello";
    }

    @PostMapping("/submit")
    public String submitForm(@RequestParam(name = "inputValue", defaultValue = "") String inputValue, Model model) {
        model.addAttribute("submittedValue", inputValue);
        model.addAttribute("message", "Form submitted successfully Pradeep!");
        return "result";
    }
}
