package com.lohith.ExpenceTracker.Controllers;

import com.lohith.ExpenceTracker.Repositories.WaterRepo;
import com.lohith.ExpenceTracker.Services.Services;
import com.lohith.ExpenceTracker.models.WaterMeter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller()
public class WaterController {

    Services s;
    WaterRepo r;
    WaterMeter m;

    public WaterController(Services s, WaterRepo r, WaterMeter m) {
        this.s = s;
        this.r = r;
        this.m = m;
    }

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/Create")
    public String Create() {
        return "Create";
    }

    @PostMapping("/Create")
    public String CreatePost(@RequestParam String location ,
                             @RequestParam Double currReading,@RequestParam Double waterConsumption,
                             @RequestParam String status) {
        m.setLocation(location);
        m.setCurrentReading(currReading);
        m.setWaterConsumption(waterConsumption);
        m.setStatus(status);

        r.save(m);
        return "redirect:/index";
    }

    @GetMapping("/update")
    public String update() {
        return "update";
    }

    @PostMapping("/update")
    public String AfterUpdate(@RequestParam int id,@RequestParam String location ,
                             @RequestParam Double currReading,@RequestParam Double waterConsumption,
                             @RequestParam String status) {
       s.update(id,currReading,waterConsumption,location,status);
        return "redirect:/index";
    }

    @GetMapping("/All")
    public String All() {
        return "All";
    }

    @GetMapping("/delete")
    public String delete() {
        return "delete";
    }

    @PostMapping("/delete")
    public String Afterdelete(@RequestParam int id) {
        r.deleteById(id);
        return "redirect:/index";
    }

}
