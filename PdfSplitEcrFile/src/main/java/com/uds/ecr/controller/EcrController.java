package com.uds.ecr.controller;

import java.util.ArrayList;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uds.ecr.model.EcrModel;
import com.uds.ecr.service.EcrService;

import antlr.collections.List;


@Controller
public class EcrController {
	
private static final Logger logger = Logger.getLogger(EcrController.class);
	

	@Autowired
	private EcrService ecrService;
	

	public EcrController() {
		System.out.println("EmployeeController()");
	}

	
	@RequestMapping("createPdf")
    public ModelAndView createFile(@ModelAttribute EcrModel ecrModel) {
    	logger.info("Creating pdf file. Data: "+ecrModel);
        return new ModelAndView("ecrHomeForm");
    }
	
	
	@RequestMapping("saveFile")
    public ModelAndView saveFile(@ModelAttribute EcrModel ecrModel) {
    	logger.info("Creating pdf file. Data: "+ecrModel);
    	String branch=ecrModel.getBranch();
    	String month=ecrModel.getMonth();
    	String year=ecrModel.getYear();
    	logger.info("Selected Branch is "+branch+", Month is "+month+", Year is "+year);
    	List Pid=ecrService.sendDetails(branch,month,year);
        return new ModelAndView("savePdfFile");
    }
	
	@RequestMapping("home")
    public ModelAndView homePage(@ModelAttribute EcrModel ecrModel) {
    	logger.info("Returning to home page. Data: "+ecrModel);
        return new ModelAndView("redirect:createPdf");
    }
	
	
}
