package com.example.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;

import com.example.bo.MyCollectionBO;
import com.example.domain.Mycollection1;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.example.bo.PostBO;
import com.example.domain.Post;

@Controller
public class HomeController {

	private static final Logger logger = Logger.getLogger(HomeController.class);

	//PostBO postBO;
	MyCollectionBO myCollectionBO;

	@Autowired
	public void setMyCollectionBO(MyCollectionBO myCollectionBO) {
		this.myCollectionBO = myCollectionBO;
	}

//
//	public void setPostBO(PostBO postBO) {
//		this.postBO = postBO;
//	}


//	public void setPostBO(PostBO postBO) {
//		this.postBO = postBO;
//	}

	// Homepage returns lists of messages
	@RequestMapping(value = "/EnvironmentGenie", method = RequestMethod.GET)
	public String home(Model model) {

		logger.info("Home page requested");
        Double totalDBServers=new Double("0");
        Double onlineDBServers=new Double("0");
		Double dbServerPercentage=new Double("0");

        Double totalAppServers=new Double("0");
        Double onlineAppserver=new Double("0");
		Double appServerPercentage=new Double("0");
        DecimalFormat df = new DecimalFormat("#.00");
        //get a list of all posts
		List<Mycollection1> myCollection1List = myCollectionBO.getAllCollections();

		for (int i=0;i<myCollection1List.size();i++){

		    if(myCollection1List.get(i).getType().equalsIgnoreCase("appserver")){
		        totalAppServers=totalAppServers+1;
		        if(myCollection1List.get(i).getAppstatus().equalsIgnoreCase("true")){
		            onlineAppserver=onlineAppserver+1;
                }

            }
            if(myCollection1List.get(i).getType().equalsIgnoreCase("dbserver")){
		        totalDBServers=totalDBServers+1;
		        if(myCollection1List.get(i).getDBstatus().equalsIgnoreCase("true")){
		            onlineDBServers=onlineDBServers+1;
                }
            }

        }

        appServerPercentage=(Double)(onlineAppserver/totalAppServers)*100;
		dbServerPercentage=(Double)(onlineDBServers/totalDBServers)*100;


		System.out.println("chetan--"+myCollection1List.get(0).getApplicationName());
		//add to session
		model.addAttribute("myCollection1List", myCollection1List);
		model.addAttribute("appServerPercentage",df.format(appServerPercentage));
        model.addAttribute("dbServerPercentage",df.format(dbServerPercentage));

		//model.addAttribute("postForm", new Post());
		//returns wall.jsp
		//return "wall";
	return "home";
	}


	@RequestMapping(value = "/EnvironmentGenie/databaseServerView", method = RequestMethod.GET)
	public String dbhome(Model model) {
		logger.info("Home page requested");
        Double totalDBServers=new Double("0");
        Double onlineDBServers=new Double("0");
        Double dbServerPercentage=new Double("0");

        Double totalAppServers=new Double("0");
        Double onlineAppserver=new Double("0");
        Double appServerPercentage=new Double("0");
        DecimalFormat df = new DecimalFormat("#.00");
		//get a list of all posts
		List<Mycollection1> myCollection1List = myCollectionBO.getAllCollections();

        for (int i=0;i<myCollection1List.size();i++){

            if(myCollection1List.get(i).getType().equalsIgnoreCase("appserver")){
                totalAppServers=totalAppServers+1;
                if(myCollection1List.get(i).getAppstatus().equalsIgnoreCase("true")){
                    onlineAppserver=onlineAppserver+1;
                }

            }
            if(myCollection1List.get(i).getType().equalsIgnoreCase("dbserver")){
                totalDBServers=totalDBServers+1;
                if(myCollection1List.get(i).getDBstatus().equalsIgnoreCase("true")){
                    onlineDBServers=onlineDBServers+1;
                }
            }

        }
        appServerPercentage=(Double)(onlineAppserver/totalAppServers)*100;
        dbServerPercentage=(Double)(onlineDBServers/totalDBServers)*100;

		System.out.println("chetan--"+myCollection1List.get(0).getApplicationName());
		//add to session
		model.addAttribute("myCollection1List", myCollection1List);
        model.addAttribute("appServerPercentage",df.format(appServerPercentage));
        model.addAttribute("dbServerPercentage",df.format(dbServerPercentage));
		//model.addAttribute("postForm", new Post());
		//returns wall.jsp
		//return "wall";
		return "dbserver";
	}



	@RequestMapping(value = "/EnvironmentGenie/writeup", method = RequestMethod.GET)
	public String writeup(Model model) {
		logger.info("Home page requested");
		//get a list of all posts
		//List<Mycollection1> myCollection1List = myCollectionBO.getAllCollections();

		//System.out.println("chetan--"+myCollection1List.get(0).getApplicationName());
		//add to session
		//model.addAttribute("myCollection1List", myCollection1List);
		//model.addAttribute("postForm", new Post());
		//returns wall.jsp
		//return "wall";
		return "writeup";
	}

	@RequestMapping(value = "/EnvironmentGenie/spindown/{hostname}",method = RequestMethod.GET)
    public  String spinDown(@PathVariable String hostname,Model model){



        logger.info("spindown requested for "+hostname);
//String scriptName="C:\\Users\\P10368884.PDCDT01C06DTQ0\\Desktop\\a.bat";
        String scriptName = "/etc/ansible/scripts/runSpinDownApp.sh";
        String commands[] = new String[]{scriptName,hostname};

        Runtime rt = Runtime.getRuntime();
        Process process = null;
        try{
            //process = rt.exec(commands);
            String line;
            Process p = Runtime.getRuntime().exec(commands);
            BufferedReader input = new BufferedReader(new InputStreamReader(p.getInputStream()));
            while ((line = input.readLine()) != null) {
                System.out.println(line);
            }
            input.close();
           // process.waitFor();
        }catch(Exception e){
            e.printStackTrace();
        }

       // ProcessBuilder processBuilder=new ProcessBuilder();

        logger.info("spindown requested completed for "+hostname);




        Double totalDBServers=new Double("0");
        Double onlineDBServers=new Double("0");
        Double dbServerPercentage=new Double("0");

        Double totalAppServers=new Double("0");
        Double onlineAppserver=new Double("0");
        Double appServerPercentage=new Double("0");
        DecimalFormat df = new DecimalFormat("#.00");
        //get a list of all posts
        List<Mycollection1> myCollection1List = myCollectionBO.getAllCollections();

        for (int i=0;i<myCollection1List.size();i++){

            if(myCollection1List.get(i).getType().equalsIgnoreCase("appserver")){
                totalAppServers=totalAppServers+1;
                if(myCollection1List.get(i).getAppstatus().equalsIgnoreCase("true")){
                    onlineAppserver=onlineAppserver+1;
                }

            }
            if(myCollection1List.get(i).getType().equalsIgnoreCase("dbserver")){
                totalDBServers=totalDBServers+1;
                if(myCollection1List.get(i).getDBstatus().equalsIgnoreCase("true")){
                    onlineDBServers=onlineDBServers+1;
                }
            }

        }

        appServerPercentage=(Double)(onlineAppserver/totalAppServers)*100;
        dbServerPercentage=(Double)(onlineDBServers/totalDBServers)*100;


       // System.out.println("chetan--"+myCollection1List.get(0).getApplicationName());
        //add to session
        model.addAttribute("myCollection1List", myCollection1List);
        model.addAttribute("appServerPercentage",df.format(appServerPercentage));
        model.addAttribute("dbServerPercentage",df.format(dbServerPercentage));

        //model.addAttribute("postForm", new Post());
        //returns wall.jsp
        //return "wall";

	    return "home";
    }




//	@RequestMapping(value = "/posts", method = RequestMethod.GET)
//	public String posts(Model model) {
//		logger.info("posts requested");
//		List<Post> postList = postBO.getAllPosts();
//		//add to session
//		model.addAttribute("postList", postList);
//		model.addAttribute("postForm", new Post());
//		//returns posts.jsp
//		return "posts";
//	}
//
//	@RequestMapping(value = "/post", method = RequestMethod.POST)
//	public String addpost(@ModelAttribute("postForm") Post post,
//			BindingResult result) {
//
//		Date date = new Date();
//		post.setDate(date);
//
//		postBO.savePost(post);
//		return "redirect:/";
//	}
//
//	@RequestMapping(value = "/reply", method = RequestMethod.POST)
//	public String reply(@RequestParam("id") String id,
//			@ModelAttribute("postForm") Post post, BindingResult result) {
//
//		//get post with id
//		Post replyPost = postBO.getPostById(id);
//
//		Date date = new Date();
//		post.setDate(date);
//
//		//embed new post into the replyPost document
//		replyPost.addPost(post);
//
//		postBO.savePost(replyPost);
//		return "redirect:/";
//	}
//
//	@RequestMapping(value = "/delete", method = RequestMethod.GET)
//	public String deleteUser(@RequestParam("id") String id) {
//		Post post = postBO.getPostById(id);
//		postBO.deletePost(post);
//		return "redirect:/";
//	}

}
