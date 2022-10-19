package rikkei.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CalculatorController {

    @GetMapping("/")
    public String getHome() {
        return "index";
    }

    @GetMapping("/calculate")
    public String calculate(HttpServletRequest request, Model model) {
        float num1 = Float.parseFloat(request.getParameter("num1"));
        float num2 = Float.parseFloat(request.getParameter("num2"));
        String operator = request.getParameter("operator");
        float result = 0;
        switch (operator) {
            case "plus":
                result = num1 + num2;
                break;
            case "minus":
                result = num1 - num2;
                break;
            case "times":
                result = num1 * num2;
                break;
            case "divide":
                if (num2 != 0) {
                    result = num1 / num2;
                } else {
                    model.addAttribute("error", "Cannot divide by zero!");
                }
        }
        model.addAttribute("result", result);
        return "index";
    }
}
