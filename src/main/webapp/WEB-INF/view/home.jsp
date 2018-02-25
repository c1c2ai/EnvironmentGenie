
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>Environment-Genie</title>

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="images/android-desktop.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">

    <link rel="shortcut icon" href="images/favicon.png">

    <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
    <!--
    <link rel="canonical" href="http://www.example.com/">
    -->

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css" />
    <link rel="stylesheet" href="css/styles.css">
    <style>


        /**/
        #view-source {
            position: fixed;
            display: block;
            right: 0;
            bottom: 0;
            margin-right: 40px;
            margin-bottom: 40px;
            z-index: 900;
        }



        .demo-ribbon {
            width: 100%;
            height: 40vh;
            background-color: #3F51B5;
            flex-shrink: 0;
        }

        .demo-main {
            margin-top: -35vh;
            flex-shrink: 0;
        }

        .demo-header .mdl-layout__header-row {
            padding-left: 40px;
        }

        .demo-container {
            max-width: 1600px;
            width: calc(100% - 16px);
            margin: 0 auto;
        }

        .demo-content {
            border-radius: 2px;
            padding: 80px 56px;
            margin-bottom: 80px;
        }

        .demo-layout.is-small-screen .demo-content {
            padding: 40px 28px;
        }

        .demo-content h3 {
            margin-top: 48px;
        }

        .demo-footer {
            padding-left: 40px;
        }

        .demo-footer .mdl-mini-footer--link-list a {
            font-size: 13px;
        }

        /*





        */




        .demo-card-square.mdl-card {
            width: 320px;
            height: 420px;
            float: left;
            margin: 1rem;
            position: relative;
        }

        .demo-card-square.mdl-card:hover {
            box-shadow: 0 8px 10px 1px rgba(0, 0, 0, .14), 0 3px 14px 2px rgba(0, 0, 0, .12), 0 5px 5px -3px rgba(0, 0, 0, .2);
        }

        .demo-card-square > .mdl-card__title {
            color: #fff;
            background: #03a9f4;
        }

        .demo-card-square > .mdl-card__accent {
            background: #ff9800;
        }

        body {
            padding: 20px;
            background: #fafafa;
            position: relative;
        }

    </style>
</head>
<body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
            <img src="img\genie-64.png"><h3>Environment-Genie Dashboard</h3>
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
            <a href="#applicationServerView" class="mdl-layout__tab is-active">Application Servers</a>
            <a href="#databaseServerView" class="mdl-layout__tab">Database servers</a>
            <a href="#aboutEnvironmentGenie" class="mdl-layout__tab">About Environment Genie</a>
            <!--<a href="#features" class="mdl-layout__tab">Technology</a>-->
            <!--<a href="#features" class="mdl-layout__tab">FAQ</a>-->
            <!--<button class="mdl-button mdl-js-button mdl-button&#45;&#45;fab mdl-js-ripple-effect mdl-button&#45;&#45;colored mdl-shadow&#45;&#45;4dp mdl-color&#45;&#45;accent" id="add">-->
            <!--<i class="material-icons" role="presentation">add</i>-->
            <!--<span class="visuallyhidden">Add</span>-->
            <!--</button>-->
        </div>

        <!-- Square card -->



    </header>
    <main class="mdl-layout__content">



        <div class="mdl-layout__tab-panel is-active" id="applicationServerView">





            <%--experimental details--%>



                <c:forEach items="${myCollection1List}" var="myServer" varStatus="p">
                    <c:if test="${myServer.type=='appserver'}" >



                    <!-- Square card -->
                    <div  class="mdl-card mdl-shadow--2dp demo-card-square">
                        <div class="mdl-card__title mdl-card--expand">
                            <h2 class="mdl-card__title-text">${myServer.hostName}</h2>
                        </div>
                        <div class="mdl-card__supporting-text">


                            <%--

                              private String hostName;
    private String applicationName;
    private String appserver;
    private String DBVersion;
    private String Appstatus;
    private String DBstatus;
    private String OS;
    private String health;
    private String javaVersion;
    private String type;
    private String available_size;
    private String available_size_percentage;
                            --%>
                            <h7>Application Name: ${myServer.applicationName}</h7><br/>
                            <h7>Appserver: ${myServer.appserver}</h7><br/>
                                <h7>DB Version: ${myServer.DBVersion}</h7><br/>
                                <%--<h7>App status: ${myServer.Appstatus}</h7><br/>--%>
                                <h7>DB Status: ${myServer.DBstatus}</h7><br/>
                                <h7>OS: ${myServer.OS}</h7><br/>
                                <h7>Health: ${myServer.health}</h7><br/>
                                <h7>Java Version: ${myServer.javaVersion}</h7><br/>
                                <h7>Type: ${myServer.type}</h7><br/>
                                <h7>Available Size: ${myServer.available_size}</h7><br/>
                                <h7>Available Size Percentage: ${myServer.available_size_percentage}</h7><br/>



                        </div>
                        <!--<div class="mdl-card__actions mdl-card&#45;&#45;border">-->
                        <!--<a class="mdl-button mdl-button&#45;&#45;accent mdl-js-button mdl-js-ripple-effect">-->
                        <!--Action-->
                        <!--</a>-->
                        <!--</div>-->
                    </div>
                </c:if>

                </c:forEach>



            <%--experimental details --%>




        </div>

        <div class="mdl-layout__tab-panel is-active" id="databaseServerView">

            <c:forEach items="${myCollection1List}" var="myServer" varStatus="p">
                <c:if test="${myServer.type=='DBServer'}" >



                    <!-- Square card -->
                    <div  class="mdl-card mdl-shadow--2dp demo-card-square">
                        <div class="mdl-card__title mdl-card--expand">
                            <h2 class="mdl-card__title-text">${myServer.hostName}</h2>
                        </div>
                        <div class="mdl-card__supporting-text">


                                <%--

                                  private String hostName;
        private String applicationName;
        private String appserver;
        private String DBVersion;
        private String Appstatus;
        private String DBstatus;
        private String OS;
        private String health;
        private String javaVersion;
        private String type;
        private String available_size;
        private String available_size_percentage;
                                --%>
                            <h7>Application Name: ${myServer.applicationName}</h7><br/>
                            <h7>Appserver: ${myServer.appserver}</h7><br/>
                            <h7>DB Version: ${myServer.DBVersion}</h7><br/>
                                <%--<h7>App status: ${myServer.Appstatus}</h7><br/>--%>
                            <h7>DB Status: ${myServer.DBstatus}</h7><br/>
                            <h7>OS: ${myServer.OS}</h7><br/>
                            <h7>Health: ${myServer.health}</h7><br/>
                            <h7>Java Version: ${myServer.javaVersion}</h7><br/>
                            <h7>Type: ${myServer.type}</h7><br/>
                            <h7>Available Size: ${myServer.available_size}</h7><br/>
                            <h7>Available Size Percentage: ${myServer.available_size_percentage}</h7><br/>



                        </div>
                        <!--<div class="mdl-card__actions mdl-card&#45;&#45;border">-->
                        <!--<a class="mdl-button mdl-button&#45;&#45;accent mdl-js-button mdl-js-ripple-effect">-->
                        <!--Action-->
                        <!--</a>-->
                        <!--</div>-->
                    </div>
                </c:if>

            </c:forEach>
        </div>



        <div class="mdl-layout__tab-panel is-active" id="aboutEnvironmentGenie">

            <!--<div class="demo-ribbon"></div>-->

            <div class="demo-container mdl-grid">
                <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
                <div class="demo-content mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">
                    Problem Statement
                    “Time to Market” is the quintessential factor that drives product development lifecycle. Add to that, monoliths
                    are on their way out and an era of micro-services is being ushered in. All this translates into shorter, focused
                    dev\testing cycles, be it unit, integration or regression .This development style accentuates the need of
                    continuous deployments manifold which if done manually can be mundane, time-consuming and error prone.
                    Enter - Environment Automation tool – a platform that helps to speed up the process of creating reliable,
                    configurable environments for development and testing from bare metal hardware - this tool can create and
                    wind down environment in a single go. This gives organization flexibility to create environment on demand as
                    well as release it when not in use.
                    What’s this POC About...?
                    This POC is a stepping stone to an end goal – it’s all about harnessing the power of open source tools and
                    frameworks to effectively address the aforementioned problem and achieve an end-state where organizations
                    have to worry the least about managing their CICD pipelines and environments – be it cloud or in premise.
                    Since environments can be spawned and wound down on a click, it diminishes greatly the need to have
                    personnel manning them. The ultimate goal is to create a product which can be used as a service to manage
                    environments, integrations and deployments for any client regardless of the technology stack involved.
                    Benefits
                    Speed and agility – single job can create/free-up multiple environments. Database servers, application
                    servers can be created from scratch in one click.
                    Holistic – orchestrate processes across hybrid environments: legacy, virtualized and cloud.
                    More control – operations visibility and dashboard to reflect the status quo to take informed decisions.
                    Open Source Tech stack – No licensing cost for development and support of the platform
                    Visualized Use Case
                    Technology Stack
                    Ansible Jenkins Python YAML script Shell scripting Meteor
                    Maven Java Tomcat MySQL NodeJS Angular MongoDB
                    Team Members
                    Sarvesh Sinai (Mentor) Sameer Gaikwad Ravindra Singh
                    Chetan Choudhary Mohan Babu Balasubramanian S
                    Vamsi Gorthi
                </div>
            </div>

        </div>




    </main>
</div>
<!--<a href="https://github.com/google/material-design-lite/blob/mdl-1.x/templates/text-only/" target="_blank" id="view-source" class="mdl-button mdl-js-button mdl-button&#45;&#45;raised mdl-js-ripple-effect mdl-color&#45;&#45;accent mdl-color-text&#45;&#45;accent-contrast">View Source</a>-->
<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
</body>
</html>
