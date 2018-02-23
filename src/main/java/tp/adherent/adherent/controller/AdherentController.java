package tp.adherent.adherent.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import tp.adherent.adherent.domain.Adherent;
import tp.adherent.adherent.service.AdherentService;

@Controller
@RequestMapping(value = {"","/adherent"})
public class AdherentController {

    @Autowired
    private AdherentService adherentService;


    @RequestMapping(value = {"/","index"})
    public String index(Model model){
        System.out.println(adherentService.findAll());
        model.addAttribute("adherents", adherentService.findAll());
        return "adherent/index";
    }

    @RequestMapping(value = "create")
    public String create(){
        return "adherent/create";
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public @ResponseBody String save(Adherent adherent){
        adherentService.save(adherent);
        return "redirect:index";
    }

    @RequestMapping(value = "edit/{id}")
    public String edit(@PathVariable Long id, Model model){
        model.addAttribute("adherent",adherentService.findById(id));
        return "adherent/edit";
    }


    @RequestMapping(value = "update",method = RequestMethod.POST)
    public String update(Adherent adherent){
        adherentService.save(adherent);
        return "redirect:index";
    }


    @RequestMapping(value = "/test")
    public @ResponseBody String test(){
        return "hello world!";
    }


}