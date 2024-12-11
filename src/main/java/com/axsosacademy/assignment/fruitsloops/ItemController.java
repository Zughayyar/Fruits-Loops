package com.axsosacademy.assignment.fruitsloops;

import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ItemController {
    
    @RequestMapping(value = "/", method=RequestMethod.GET)
    public String index(Model model) {
        ArrayList<Item> fruits = new ArrayList<Item>();
        Item item1 = new Item("kiwi", 1.5);
        Item item2 = new Item("Mango", 2.0);
        Item item3 = new Item("Goji Berries", 4.0);
        Item item4 =  new Item("Guava", 0.75);
        fruits.add(item1);
        fruits.add(item2);
        fruits.add(item3);
        fruits.add(item4);
        
        model.addAttribute("fruits", fruits);
        return "index.jsp";
    }
}