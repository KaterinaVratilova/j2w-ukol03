package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class VizitkaController {

  private final List<Vizitka> seznamVizitek = List.of(
new Vizitka("PhDr. Michal Lukeš", "Národní muzeum","Václavské náměstí 68", "110 01 Praha 1", "Václavské náměstí 68, 110 00 Praha 1", "sekretariat@nm.cz", null, "www.nm.cz" ),
new Vizitka("Dott. Emanuelle Gadaleta", "České muzeum hudby","Karmelitská 2", "118 00 Praha 1", "Karmelitská 2, 118 00 Praha 1", null, "+420 800123456", "www.nm.cz/ceske-muzeum-hudby" ),
new Vizitka("PhDr. Eva Ditterová", "Náprstkovo muzeum asijských, afrických a amerických kultur","Betlémské nám. 1", "110 00, Praha 1", "Betlémské nám. 1, 110 00 Praha 1", null, "+420 800123456", "www.nm.cz/naprstkovo-muzeum-asijskych-africkych-a-americkych-kultur" ),
new Vizitka("RNDr. Ing. Ivo Macek", "Přírodovědecké muzeum","Cirkusová 1740", "190 00 Praha 9 – Horní Počernice", "Cirkusová 1740, 190 00 Praha 9 – Horní Počernice", "ivo.macek@nm.cz", "+420 800123456", "www.nm.cz/prirodovedecke-muzeum" )
  );

  @GetMapping("/")
  public ModelAndView seznam() {

    ModelAndView modelAndView = new ModelAndView("seznam");
    modelAndView.addObject("vizitky", seznamVizitek);

    return modelAndView;
  }

  @GetMapping("/detail/{id}")
  public ModelAndView detail(@PathVariable int id) {

    ModelAndView modelAndView = new ModelAndView ("detail");
    modelAndView.addObject("vizitka", seznamVizitek.get(id));

    return modelAndView;
  }
}
