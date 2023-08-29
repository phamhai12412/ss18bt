package ss18.bt.calculator.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class CalController {
    @GetMapping
    public String showForm(){
        return "cal";
    }
    @PostMapping("/result")
    public String cal(@RequestParam ("num1") int num1, @RequestParam ("num2") int num2, @RequestParam ("operator") String operator, Model model){
        model.addAttribute("operator",operator);
        switch (operator){
            case "add":
                model.addAttribute("result",num1+num2);
                break;
            case "sub":
                model.addAttribute("result",num1-num2);
                break;
            case "mul":
                model.addAttribute("result",num1*num2);
                break;
            case "div":
                if(num2==0){
                    model.addAttribute("error","can't divide by zero");
                } else {
                    model.addAttribute("result",num1/num2);
                }
                break;
        }
        return "cal";
    }

}
