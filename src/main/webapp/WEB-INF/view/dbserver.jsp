
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
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>


    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css" />
    <link rel="stylesheet" href="css/styles.css">
    <%--<link rel="stylesheet" href="css/materialdesignicons.min.css"/>--%>

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
            height: 300px;
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
            <img src="img\icons8-genie-100.png"><h3>Environment-Genie Dashboard</h3>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <table>
                <tr><td style="align-content: center"><h6 style="color: white">No.Appserver</h6></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style="align-content: center"><h6 style="color: white">No.DBServer</h6></td></tr>
                <tr><td style="align-content: center"><h1 style="color: white">3</h1></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style="align-content: center"><h1 style="color: white">3</h1></td></tr>
            </table>

        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
            <a href="/" class="mdl-layout__tab " id="applicationServers"><img src="img/appservers.png"/> Application Servers</a>
            <a href="/databaseServerView" class="mdl-layout__tab is-active" id="databaseServers"><img src="img/databaseservers.png"/> Database servers</a>
            <a href="/writeup" class="mdl-layout__tab" id="aboutEnvironment">About Environment Genie</a>

        </div>

        <!-- Square card -->



    </header>
    <main class="mdl-layout__content">



        <div class="mdl-layout__tab-panel is-active" id="databaseServerView">

            <c:forEach items="${myCollection1List}" var="myServer" varStatus="p">
                <c:if test="${myServer.type=='DBServer'}" >



                    <!-- Square card -->
                    <div  class="mdl-card mdl-shadow--2dp demo-card-square">


                        <c:choose>
                            <c:when test="${myServer.DBstatus=='True'}">
                                <div class="mdl-card__title mdl-card--expand" style="background: green">
                                   <img src="img/databasewhite.png"/><h2 class="mdl-card__title-text" >${myServer.hostName}</h2>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="mdl-card__title mdl-card--expand" style="background: red">
                                    <img src="img/databasewhite.png"/><h2 class="mdl-card__title-text">${myServer.hostName}</h2>

                                    <!-- Rich Tooltip -->
                                        <%--<div id="tt3" class="icon material-icons">cloud_upload</div>--%>
                                    <span class="mdi mdi-linux"></span>
                                    <div class="mdl-tooltip" data-mdl-for="tt3">
                                            ${myServer.OS}
                                    </div>

                                </div>
                            </c:otherwise>
                        </c:choose>





                        <div class="mdl-card__supporting-text">

                            <b><h7 title="Application Name"><img src="img/applicationIcon.png"/> ${myServer.applicationName}</h7></b><br/>
                            <h7 title="Database Version"><img src="img/mysql.png" width="16px" height="16px"/> ${myServer.DBVersion}</h7><br/>

                            <h7 title="Operating System"><img src="img/if_redhat_7353.png " height="16px" width="16px"/> ${myServer.OS}</h7><br/>
                            <h7 title="Health"><i class="fas fa-heartbeat"></i> ${myServer.health}</h7><br/>
                            <%--<h7 title="Java Version"><img src="img/java.png"/> ${myServer.javaVesion}</h7><br/>--%>

                            <h7 title="Memory Available"> <img src="img/memory-chip.png"> <span title="Available Size">${myServer.available_size}B</span><span title="Available Size Percentage"> ${myServer.available_size_percentage}</span></h7><br/>
                            <h7 title="Database Status"><img src="img/notification.png"> ${myServer.DBstatus}</h7><br/>
                            <%--<h7 title="External Link"><img src="img/external-link.png"><a href="${myServer.application_Link}">Application Console</a></h7><br/>--%>
                        </div>

                    </div>





                    <%--<!-- Square card -->--%>
                    <%--<div  class="mdl-card mdl-shadow--2dp demo-card-square">--%>
                        <%--<div class="mdl-card__title mdl-card--expand">--%>
                            <%--<h2 class="mdl-card__title-text">${myServer.hostName}</h2>--%>
                        <%--</div>--%>
                        <%--<div class="mdl-card__supporting-text">--%>


                            <%--<h7>Application Name: ${myServer.applicationName}</h7><br/>--%>
                                <%--&lt;%&ndash;<h7>Appserver: ${myServer.appserver}</h7><br/>&ndash;%&gt;--%>
                            <%--<h7>DB Version: ${myServer.DBVersion}</h7><br/>--%>
                                <%--&lt;%&ndash;<h7>App status: ${myServer.Appstatus}</h7><br/>&ndash;%&gt;--%>
                            <%--<h7>DB Status: ${myServer.DBstatus}</h7><br/>--%>
                            <%--<h7>OS: ${myServer.OS}</h7><br/>--%>
                            <%--<h7>Health: ${myServer.health}</h7><br/>--%>
                            <%--<h7>Java Version: ${myServer.javaVesion}</h7><br/>--%>

                            <%--<h7>Available Size: ${myServer.available_size}</h7><br/>--%>
                            <%--<h7>Available Size Percentage: ${myServer.available_size_percentage}</h7><br/>--%>
                                <%--&lt;%&ndash;<h7>App Status: ${myServer.Appstatus}</h7><br/>&ndash;%&gt;--%>



                        <%--</div>--%>

                    <%--</div>--%>
                </c:if>

            </c:forEach>
        </div>





    </main>
</div>
<!--<a href="https://github.com/google/material-design-lite/blob/mdl-1.x/templates/text-only/" target="_blank" id="view-source" class="mdl-button mdl-js-button mdl-button&#45;&#45;raised mdl-js-ripple-effect mdl-color&#45;&#45;accent mdl-color-text&#45;&#45;accent-contrast">View Source</a>-->
<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script>

    $().ready(function () {
        $('#applicationServers').trigger('click');






    });

</script>

</body>
</html>
