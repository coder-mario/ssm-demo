package cc.blueday.user.controller;

import cc.blueday.user.data.GCloudUsers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cc.blueday.user.service.GCloudUserService;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private GCloudUserService gcloudUserService;

    @RequestMapping("/getUserById")
    public String getUserById(String id,Model model){
        id="sdmali";
        System.out.println(id);
        GCloudUsers user = gcloudUserService.getUserById(id);
        model.addAttribute("user",user);
        return "getUser";
    }

}
