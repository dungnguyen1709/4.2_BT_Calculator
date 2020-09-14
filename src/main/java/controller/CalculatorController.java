package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/calculator")
public class CalculatorController {
    @GetMapping
    public String show() {
        return "index";
    }

   @PostMapping
    public String calculate(@RequestParam(value = "num1",required = false,defaultValue = "0")String num3,
                            @RequestParam(value = "num2",required = false,defaultValue = "0")String num4,
                            @RequestParam("bt_type") String bt_type, Model model){
        int result = 0;
        int num1 = Integer.parseInt(num3);
        int num2 = Integer.parseInt(num4);

        switch (bt_type) {
            case "add":
                result = num1 + num2;
                break;
            case "subtract":
                result = num1 - num2;
                break;
            case "multiply":
                result = num1 * num2;
                break;
            case "divide":
                result = num1 / num2;
                break;
        }
        model.addAttribute("result",result);
        return "index";
    }

}
