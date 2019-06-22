package cc.blueday.user.controller;

import cc.blueday.user.data.GCloudUsers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cc.blueday.user.service.GCloudUserService;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private GCloudUserService gcloudUserService;

    @RequestMapping("/getUserById/{userid}")
    @ResponseBody
    public ModelAndView getUserById(@PathVariable String userid){
        System.out.println(userid);
        GCloudUsers user = gcloudUserService.getUserById(userid);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("user", user);
        return new ModelAndView("getUser", model);
    }
    @RequestMapping("/login")
    @ResponseBody
    public Map login(String id,String password,Model model){
        System.out.println(id);
        System.out.println(password);
        Map map=new HashMap();
        GCloudUsers user = gcloudUserService.login(id,password);
        if(user!=null){
            map.put("state","1");
            map.put("userid",user.getUserId());
        }else{
            map.put("state","0");
        }
        return map;
    }

}
