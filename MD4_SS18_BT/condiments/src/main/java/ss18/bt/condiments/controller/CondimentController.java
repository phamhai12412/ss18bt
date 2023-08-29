package ss18.bt.condiments.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;

@Controller
@RequestMapping("/")
public class CondimentController {
    @GetMapping
    public String showForm(){
        return "form";
    }
    @PostMapping("/save")
    public String save(@RequestParam("condiment")String[] condiment, Model model){
        model.addAttribute("condiment", Arrays.toString(condiment));
        return "form";
    }
}
