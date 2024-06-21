
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
    <meta name="description" content="Access Britney Spears photos, galleries, tour informaiton, and videos.   Get the latest news direct from BritneySpears.com." />
    <meta name="keywords" content="britney spears, britney spears photos, pictures, pop icon, concerts, tours, music, womanizer video, concert and tour dates" />
    <meta name="viewport" content="user-scalable=no" />
    <link rel="shortcut icon" href="http://www.britneyspears.com/images/favicon.ico" />
    <title>
        :: Britney Spears ::</title>
    <link type="text/css" rel="stylesheet" href="http://www.britneyspears.com/css/HomeStyles2.css" />
    <link type="text/css" rel="stylesheet" href="http://www.britneyspears.com/css/HomeBox.css" />

    <script type="text/javascript" src="http://www.britneyspears.com/javascripts/jquery.min.js"></script>

    <script type="text/javascript" src="http://www.britneyspears.com/javascripts/jquery-ui.min.js"></script>

    <link media="screen" rel="stylesheet" href="http://www.britneyspears.com/page_controls/colorbox/colorbox.css" />

    <script src="http://www.britneyspears.com/page_controls/colorbox/jquery.colorbox.js"></script>

    <script type="text/javascript" src="http://www.britneyspears.com/scripts/swfobject.js"></script>

    <script type="text/javascript" src="http://www.britneyspears.com/javascripts/jquery.li-scroller.1.0.js"></script>

    <link rel="stylesheet" href="http://www.britneyspears.com/page_controls/ticker/li-scroller.css" type="text/css"
        media="screen" />
	
    <link href="https://plus.google.com/100000772955143706751" rel="publisher" />

    <script type="text/javascript" language="javascript">
    
    var rowPositionString = "";
    var rowPosition = "closed";
    var linkLocation="";
    var strIsVideoOrWallpaper = 'W';    
    var strWallpaperID = 27;
    var strNewPage = "N";
    var strCollapse = "false";

         function LoadContent() { 
              LoadPage();
         }
         
         $(document).ready(function() { 
              if(strIsVideoOrWallpaper=="V")
                {
                  document.getElementById("videoCB").style.display="";
                }
                if(strIsVideoOrWallpaper=="W")
                {
                  document.getElementById("videoCB").style.display="none";
                }
           
                SetVideoWallpaperBtn();          
                rowPosition="open";
                SplitBoxesClose();
                showLogo();
                showFooter();
                LoadVideo(); 
                $("ul#ticker01").liScroll();
          });
             
   
       function redirectPage() {    
            if(strNewPage=="N")
            {
                window.location = linkLocation;     
            }
            else if(strNewPage=="Y")
            {
                window.open(linkLocation);     
            }
       } 
            
        function SplitBoxesOpen(strType)
        {   
            if(strNewPage=="Y")
            {
                ClosePage();
                return;
            }
            
            if(rowPosition=="closed")
            {
                rowPosition="open";
                if(strType=="video")
                {
                  showVideoButton();   
                                   
                }
               
               if(strType=="link")
                {
                   hideLogo('1000');
                  hideFooter();
                }
                
                var xPosition = "-=400";
                $("#box1").animate({"left": xPosition}, {"duration": 1000});
                $("#box2").animate({"left": xPosition}, {"duration": 1000});
                
                
                xPosition = "+=400";
                $("#box3").animate({"left": xPosition}, {"duration": 1000});
                $("#box4").animate({"left": xPosition}, {"duration": 1000});
            }                      
        }
        
        function showLogo()
        {
            if($("#logo").css("top")=="auto")
            {
                $("#logo").css("top","0px")
            }
            else
            {
                  $("#logo").animate({"top": "+=300"}, {"duration": 1000}); 
            }
            
        }
        function hideLogo(strDuration)
        {
            $("#logo").animate({"top": "-=300"}, {"duration": strDuration}); 
        }
        
        function showFooter()
        {
            $("#sliderDiv").animate({"top": "-=300"}, {"duration": 1000}); 
            $("#btmImg").css("display", "none");     
            $("#btmImg").fadeIn(1000);   
        }
        
        function hideFooter()
        {
            $("#sliderDiv").animate({"top": "+=300"}, {"duration": 1000}); 
            $("#btmImg").fadeOut(1000);   
                       
        }
        
        function showVideoButton()
        {
            $("#videoCB").animate({"top": "+=200"}, {"duration": 1000}); 
            document.getElementById("imgLines").style.display="none"; 
            
             try{
                window.frames.gVideo.unMuteVideo();
            }catch(err){}  
               
            document.getElementById("bgVideo").style.height=screen.availHeight+"px"; 
        }
        
        function hideVideoButton()
        {   
            $("#videoCB").animate({"top": "-=200"}, {"duration": 1000});
            document.getElementById("imgLines").style.display="";    
            try{
                window.frames.gVideo.MuteVideoPlayer();
            }catch(err){}            
           
            document.getElementById("bgVideo").style.height="100%";  
            document.getElementById("bgVideo").style.width="100%"; 
        }
                
        function SplitBoxesClose()
        {
            if(rowPosition=="open")
            {
               rowPosition="closed";
               
               if(strIsVideoOrWallpaper=="V")
                {
                  hideVideoButton();
                }

                var xPosition = "+=400";
                $("#box1").animate({"left": xPosition}, {"duration": 1000});
                $("#box2").animate({"left": xPosition}, {"duration": 1000});                
                
                xPosition = "-=400";                
                $("#box3").animate({"left": xPosition}, {"duration": 1000});
                $("#box4").animate({"left": xPosition}, {"duration": 1000});
                

             }
        }
        
        function SetPageLoc(strpageLoc)
        {
            if(strCollapse == "true")
            {   
                strCollapse = "false"
                return;
            }
            linkLocation = strpageLoc;
            SplitBoxesOpen('1000');
            hideLogo('1000');   
            hideFooter();    
            document.getElementById("body1").style.backgroundImage="none";
            $("#wrap").fadeOut(500, redirectPage);      
            
        }

        function OpenNewWindow(strpageLoc)
        {
            
            if(strCollapse == "true")
            {   
                strCollapse = "false"
                return;
            }
            window.open(strpageLoc);    
            
        }

        function SetLinkLocation(strLink)
        {
            var strNewLink = strLink.split(",");
            if(strNewLink[1] == "Y")
            {
                strNewPage="Y";
            }
            else{
                strNewPage="N";
            }
            linkLocation=strNewLink[0]
        }
        
        function fadePageClose()
        {
            
             if(OpenPageCount==HomeIconCount)
             {
                OpenPageCount = 1;
                ClosePage();
             }
             OpenPageCount=OpenPageCount+1
             
        }
            
        function ClosePage()
        {
            if(strNewPage=="N")
            {
                document.getElementById("body1").style.backgroundImage="none";
                $("#wrap").fadeOut(500, redirectPage); 
            }
            else if(strNewPage=="Y")
            {
                window.open(linkLocation);     
            }
            
        }
        
        function OpenPage()
        {
             LoadVideo();
        }
        
        function SetVideoWallpaperBtn()
        {
            if(strIsVideoOrWallpaper=="W")
            {
                if(strWallpaperID =="")
                {
                    document.getElementById("btnVideo").style.display="none";
                    document.getElementById("btnDownload").style.display="none";                
                }
                else{
                    document.getElementById("btnVideo").style.display="none";
                    document.getElementById("btnDownload").style.display="";                
                }
                  
            }
            else if(strIsVideoOrWallpaper=="V")
            {
                document.getElementById("btnVideo").style.display="";
                document.getElementById("btnDownload").style.display="none"
            }
        }
        
        function LoadVideo()
        {
            if(strIsVideoOrWallpaper=="W")
            {
                return;
            }
            else if(strIsVideoOrWallpaper=="V")
            {            
                document.getElementById("imgLines").style.display="";
                document.getElementById("gVideo").src="BSHomeVideo.aspx";     
                document.getElementById("body1").style.backgroundImage="none";           
            }
            
        }
           
             
              
           
    
   function setWallpaperID(strWPID)
   {
        strWallpaperID = strWPID;
   }
    
    function LoadBox(page, w, h) {
        page = page+"?ID="+strWallpaperID;
        $.colorbox({iframe:true, innerWidth:w, innerHeight:h,href:page });
	}	
	function LoadNavBox(page, w, h) {
        $.colorbox({iframe:true, innerWidth:w, innerHeight:h,href:page });
	}	
    
    function CloseBox()
	{
	    $.colorbox.close();
	}
	
	function LoadUser()
	{
	    location.reload(true)
	}
	
	function HideShowDiv(strID, strPos, strImg, strImgLine)
	{
	    strCollapse = "true";
	    var strSrc = document.getElementById(strImg).src;
	    if(strSrc.indexOf("maximize_icon")==-1)
	    {
	        HideDiv(strID, strPos, strImg, strImgLine);
	     
	    }
	    else{
	        ShowDiv(strID, strPos, strImg, strImgLine);
	    }
	    
	    
	    if(document.getElementById(strImg).style.volume=="loud")
	    {
	        window.frames.gvideoBox.VideoStopPlayer();	   	             
	    }
	}
	
	function HideDiv(strID, strPos, strImg, strImgLine)
	{
	    document.getElementById(strImg).src="images/content/maximize_icon.png";
	    document.getElementById(strImg).alt="maximize";
	    //document.getElementById(strImgLine).style.display="none";
	    
	    var xID = "#"+strID;
	    
	    var xPosition = "";
	    if(strPos=="top")
	    {
	        xPosition="-=300";
	        $(xID).animate({"top": xPosition}, {"duration": 1000});
	         
	    }
	    else{
	        xPosition="+=300"
	        //$(xID+"Main").animate({"top": xPosition}, {"duration": 1000});
	        $(xID+"Main").animate({
                top: xPosition
              }, 1000, function() {
                 $(xID+"Middle").css("top","340px");

              });
	       // $(xID+"Middle").animate({"top": "+=340"}, {"duration": 1000});
	    }
	    
        
          
	}
	
	function ShowDiv(strID, strPos, strImg, strImgLine)
	{
	     document.getElementById(strImg).src="images/content/minimize_icon.png";
	     document.getElementById(strImg).alt="minimize";
	    // document.getElementById(strImgLine).style.display="";
	    
	    var xID = "#"+strID;
	    
	    var xPosition = "";
	    if(strPos=="top")
	    {
	        xPosition="+=300";
	        $(xID).animate({"top": xPosition}, {"duration": 1000});
	    }
	    else{
	        $(xID+"Middle").css("top","0px");
	        
	        xPosition="-=300"
	       // $(xID+"Main").animate({"top": xPosition}, {"duration": 1000});
	        //$(xID+"Middle").animate({"top": "-=340"}, {"duration": 1000});
	        $(xID+"Main").animate({
                top: xPosition
              }, 1000, function() {
                //$(xID+"Middle").animate({"top": "-=40"}, {"duration": 1000});
              });
	    }
	    
        
	}
	
	function ShowVideo()
	{   
	       try{ }catch(err){} 	
                window.frames.gvideoBox.playHomeVideo();	    
	            document.getElementById("YTFrame").style.zIndex="21";
	            document.getElementById("YTVideo").style.display="none";
               	    
	    
	}
    
    </script>

    <style type="text/css">
        *
        {
            margin: 0;
            padding: 0;
        }
        html, body
        {
            height: 100%;
        }
        #wrap
        {
            height: 100%;
        }
        #main
        {
            overflow: auto;
            padding-bottom: 67px;
            border: solid 0px red;
            min-height: 100%;
        }
        #footerWrapper
        {
            position: relative;
            margin-top: -67px;
            height: 67px;
            clear: both;
            overflow: hidden;
            border: solid 0px blue;
        }
        body:before
        {
            content: "";
            height: 100%;
            float: left;
            width: 0;
            margin-top: -32767px;
        }
        #footerNav
        {
            color: #ffffff;
            background-image: url(css/images/transparancy3.png);
            width: 100%;
            position: relative;
            bottom: 0;
            text-align: center;
            font: Helvetica;
        }
        #footerNav a
        {
            color: #fff;
            padding-right: 20px;
            font: Helvetica;
        }
    </style>
</head>
<body id="body1" style="margin:0 0 0 0;background:url(user_uploads/wallpapers/large/05102011162901.jpg) no-repeat top center #000000 fixed;">
    <form name="form1" method="post" action="index.aspx" id="form1">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNjIyNjgxOTY5D2QWAmYPFgIeBXN0eWxlBXNtYXJnaW46MCAwIDAgMDtiYWNrZ3JvdW5kOnVybCh1c2VyX3VwbG9hZHMvd2FsbHBhcGVycy9sYXJnZS8wNTEwMjAxMTE2MjkwMS5qcGcpIG5vLXJlcGVhdCB0b3AgY2VudGVyICMwMDAwMDAgZml4ZWQ7FgICAQ9kFgoCAw9kFgICAQ8WAh4HVmlzaWJsZWhkAgsPFgQeB29uY2xpY2sFME9wZW5OZXdXaW5kb3coJ2h0dHA6Ly9zbWFydHVybC5pdC9TY3JlYW1OU2hvdXQnKR8BZxYEAgEPFgIfAAVKYmFja2dyb3VuZC1pbWFnZTp1cmwodXNlcl91cGxvYWRzL2hvbWVib3hpbWFnZXMvbGFyZ2UvMDExMTIwMTMxNzUzMTEuanBnKTtkAgMPDxYCHgRUZXh0BRk8cD5TY3JlYW0gJmFtcDsgU2hvdXQ8L3A+ZGQCDQ8WBB8CBT5PcGVuTmV3V2luZG93KCdodHRwczovL3BsdXMuZ29vZ2xlLmNvbS8xMDAwMDA3NzI5NTUxNDM3MDY3NTEnKR8BZxYEAgEPFgIfAAVEYmFja2dyb3VuZDp1cmwodXNlcl91cGxvYWRzL2hvbWVib3hpbWFnZXMvbGFyZ2UvMDIyNDIwMTIxODEyNTEuanBnKTtkAgMPDxYCHwMFKjxwPkFkZCBCcml0bmV5IHRvIFlvdXIgR29vZ2xlKyBDaXJjbGVzPC9wPmRkAg8PFgIfAWcWBAIBDxYCHwAFU2JhY2tncm91bmQ6dXJsKHVzZXJfdXBsb2Fkcy9ob21lYm94aW1hZ2VzL2xhcmdlLzA1MDkyMDExMTU0MjI5LnBuZyk7Y3Vyc29yOmRlZmF1bHQ7ZAIDDw8WAh8DBSA8cD5SRUFEIE1PUkUgT0YgQlJJVE5FWSBORVdTPC9wPhYCHwIFI1NldFBhZ2VMb2MoJ0JTTmV3czIuYXNweD9JY29uSUQ9MScpZAIRDxYEHwIFLE9wZW5OZXdXaW5kb3coJ2h0dHA6Ly9iaXQubHkvaXRzYnJpdG5leWFwcCcpHwFnFgQCAQ8WAh8ABURiYWNrZ3JvdW5kOnVybCh1c2VyX3VwbG9hZHMvaG9tZWJveGltYWdlcy9sYXJnZS8wMTA2MjAxMjAyNDQzOS5qcGcpO2QCAw8PFgIfAwUYPHA+SVQnUyBCUklUTkVZISBBUFA8L3A+ZGRk9zyvSS5S9uGLeTmGUqkyWMmyCCY=" />

<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWAgLv3dLGAQL0tsu2BevwRZ15dFa0Gts52nchlx/jj3Fr" />
    <noscript>
        <div align="center" style="width: 100%; height: 100%; background-color: Black; position: absolute;
            z-index: 50">
            <img src="http://www.britneyspears.com/images/enableJavascript.jpg" alt="How to enable JavaScript" />
        </div>
    </noscript>
    <div id="wrap">
        <span id="lblStatus"><font color="Red"></font></span>
        <div id="videoCB" style="position: absolute; top: 30px; margin-left: 800px; z-index: 100;
            width: 350px; display: none">
            <input id="btnVideoClose" class="login" type="button" value="Close Video" onclick="SplitBoxesClose(), showLogo(),showFooter()"
                style="top: 500px; color: #ccc;" />
        </div>
        <div id="imgLines" style="position: absolute; z-index: 2; display: none; overflow: hidden;
            width: 100%; height: 100%; border: solid 0px red">
            <img id="imgLinesImg" src="http://www.britneyspears.com/images/lines.png" alt="" style="width: 100%; height: 100%" />
        </div>
        
        <div id="main">
            <div id="bgHolder">
                <div id="bgVideo" style="position: absolute; z-index: 0; margin-top: 0px;
                    border: solid 0px red">
                    
                </div>
                <div id="logo">
                    <div class="logoimg">
                        <img src="http://www.britneyspears.com/images/BS_logo.png" alt="Britney Spears" /></div>
                    <div style="color: white; width: 300px; float: right; position: relative; top: 10px;
                        border: solid 0px gold">
                        <input id="btnVideo" class="login" type="button" value="Watch Video" onclick="SplitBoxesOpen('video'),hideLogo(1000),hideFooter()"
                            style="display: none; color: #ccc" />
                        <input name="btnDownload" type="button" id="btnDownload" class="login" value="Wallpaper" onclick="LoadBox('BSWallpaperDownload.aspx','460', '600');" style="color: #ccc;
                            cursor: pointer" />
                    </div>
                    <div id="loginForm">
                        <iframe id="gLogin" src="http://www.britneyspears.com/BSLogin.aspx" name="gLogin" allowtransparency="true" width="300px" height="80px" frameborder="0" scrolling="no" style="border: solid 0px red;">
                        </iframe>
                    </div>
                    <div id="headerLinks">
                        

<script src="http://platform.twitter.com/widgets.js" type="text/javascript" charset="utf-8"></script>

<div style="border: solid 0px blue; width: 580px; float: left; margin-top: 5px; padding: 0">
    <ul>
        <li><div onclick='SetLinkLocation("http://www.britneyspears.com/femme-fatale-tour/,Y"),ClosePage()' style='float:left; padding:0 5px 0 10px; cursor:pointer'><span style='color:#fff; font-size:14px; padding-left:2px; font-weight:bold; font-family:Helvetica'>TOUR</span></div></li><li><div onclick='SetLinkLocation("BSNews2.aspx?IconID=1"),ClosePage()' style='float:left; padding:0 5px 0 10px; cursor:pointer'><span style='color:#fff; font-size:14px; padding-left:2px; font-weight:bold; font-family:Helvetica'>NEWS</span></div></li><li><div onclick='SetLinkLocation("BSAlert.aspx?IconID=3"),ClosePage()' style='float:left; padding:0 5px 0 10px; cursor:pointer'><span style='color:#fff; font-size:14px; padding-left:2px; font-weight:bold; font-family:Helvetica'>BS ALERT</span></div></li><li><div onclick='SetLinkLocation("BSGalleryCategories.aspx?IconID=4"),ClosePage()' style='float:left; padding:0 5px 0 10px; cursor:pointer'><span style='color:#fff; font-size:14px; padding-left:2px; font-weight:bold; font-family:Helvetica'>GALLERY</span></div></li><li><div onclick='SetLinkLocation("BSYouTubeVideos.aspx?IconID=5"),ClosePage()' style='float:left; padding:0 5px 0 10px; cursor:pointer'><span style='color:#fff; font-size:14px; padding-left:2px; font-weight:bold; font-family:Helvetica'>MEDIA</span></div></li><li><div onclick='SetLinkLocation("http://store.britneyspears.com/,Y"),ClosePage()' style='float:left; padding:0 5px 0 10px; cursor:pointer'><span style='color:#fff; font-size:14px; padding-left:2px; font-weight:bold; font-family:Helvetica'>SHOP</span></div></li><li><div onclick='SetLinkLocation("BSIphoneApp.aspx?IconID=8"),ClosePage()' style='float:left; padding:0 5px 0 10px; cursor:pointer'><span style='color:#fff; font-size:14px; padding-left:2px; font-weight:bold; font-family:Helvetica'>APP</span></div></li>
    </ul>
</div>
<div style="border: solid 0px red; width: 440px; float: right; margin: 0; padding: 8px 0 0 0;">
    <ul>
       <li><a href='http://twitter.com/britneyspears' class="twitter-follow-button" data-button="grey">Follow
            @britneyspears</a></li>
            
        
        <li><a href="http://www.facebook.com/britneyspears" target="_blank">
            <img src="http://www.britneyspears.com/images/content/facebook_icon.png" border="0" alt="Facebook" /></a></li>
        <li><a href="http://www.youtube.com/britneyspearss" target="_blank">
            <img src="http://www.britneyspears.com/images/content/youtube_icon.png" border="0" alt="YouTube" /></a> </li>

            
        <li><a rel="author" href="https://plus.google.com/100000772955143706751/posts?rel=author" target="_blank">
            <img src="http://www.britneyspears.com/images/content/google_icon.png" border="0" alt="Google" /></a> </li>
                        
        <li><a href="http://britneyspears.tumblr.com" target="_blank">
            <img src="http://www.britneyspears.com/images/content/tumblor_icon.png" border="0" alt="Tumblr" /></a> </li>
        <li><a href="http://itunes.apple.com/us/artist/britney-spears/id217005?uo=4" target="_blank">
            <img src="http://www.britneyspears.com/images/content/itunes_icon.png" border="0" alt="iTunes" /></a> </li>
    </ul>
</div>

                    </div>
                </div>
                <div id="wrapper">
                    <div id="wrapperinner">
                        
                        <div id="box1" onclick="OpenNewWindow('http://smarturl.it/ScreamNShout')">
                            <div id="box1Left" class="boxLeft">
                            </div>
                            <div id="box1Right" class="boxRight">
                            </div>
                            <div id="box1Middle" class="boxMiddle" style="background-image:url(user_uploads/homeboximages/large/01112013175311.jpg);">
                                <br /><div class='tourdetails' style='width:210px; border:solid 0px red'><ul><li class='date1'><span style = 'color:white;font-family:Helvetica;font-size: 11px; padding-left: 4px;'>&nbsp;<a href = 'http://smarturl.it/ScreamNShout' target = '_blank'></a></span></li></ul></div>
                            </div>
                            <div id="box1Bottom" class="boxBottom">
                                <div id="box1ImgLine" style="left: 0px; border-bottom: solid 1px #fff; position: absolute;
                                    height: 39px; width: 100%">
                                </div>
                                <div style="width: 284px; float: left;">
                                    <span id="lblBox1" class="homeLabels"><p>Scream &amp; Shout</p></span>
                                </div>
                                <div style="width: 16px; float: right; position: relative">
                                    <img src="http://www.britneyspears.com/images/content/minimize_icon.png" id="box1Img" style="cursor: pointer" alt="minimize" onclick="HideShowDiv('box1','top', 'box1Img', 'box1ImgLine')" />
                                </div>
                            </div>
                        </div>
                        
                        
                        <div id="box2" onclick="OpenNewWindow('https://plus.google.com/100000772955143706751')">
                            <div id="box2Main" style="position: relative">
                                <div id="box2Left" class="boxLeft">
                                </div>
                                <div id="box2Right" class="boxRight">
                                </div>
                                <div id="box2Middle" class="boxMiddle" style="background:url(user_uploads/homeboximages/large/02242012181251.jpg);">
                                    <br /><div class='tourdetails' style='width:210px; border:solid 0px red'><ul><li class='date1'><span style = 'color:white;font-family:Helvetica;font-size: 11px; padding-left: 4px;'>&nbsp;<a href = 'https://plus.google.com/100000772955143706751' target = '_blank'></a></span></li></ul></div>
                                </div>
                            </div>
                            <div id="box2Bottom" class="boxBottom">
                                <div id="box2ImgLine" style="left: 0px; border-bottom: solid 1px #fff; position: absolute;
                                    height: 39px; width: 100%">
                                </div>
                                <div style="width: 284px; float: left;">
                                    <span id="lblBox2" class="homeLabels"><p>Add Britney to Your Google+ Circles</p></span>
                                </div>
                                <div style="width: 16px; float: right; position: relative">
                                    <img src="http://www.britneyspears.com/images/content/minimize_icon.png" id="box2Img" style="cursor: pointer" alt="minimize" onclick="HideShowDiv('box2','bottom', 'box2Img', 'box2ImgLine')" />
                                </div>
                            </div>
                        </div>
                        

                        
                        <div id="box3">
<div style="margin-left:5px">
<script type="text/javascript">
window.___gcfg = {lang: 'en'};
(function() 
{var po = document.createElement("script");
po.type = "text/javascript"; po.async = true;po.src = "https://apis.google.com/js/plusone.js";
var s = document.getElementsByTagName("script")[0];
s.parentNode.insertBefore(po, s);
})();</script>

<g:plus href="https://plus.google.com/100000772955143706751" width="307" height="69" theme="dark"></g:plus>

</div>
                            <div id="box3Left" class="boxLeft">
                            </div>
                            <div id="box3Right" class="boxRight">
                            </div>
                            <div id="box3Middle" class="boxMiddle" style="background:url(user_uploads/homeboximages/large/05092011154229.png);cursor:default;">
                                <br /><div id='HomeNews'><ul><li><table><tr><td align = 'left' valign = 'top'>-   </td><td align = 'left'><a href = 'http://www.britneyspears.com/BSNewsDetails2.aspx?NewsID=2116' target = '_parent'>"Scream & Shout" In Billboard's March Madness Finals</a></td></tr></table></li></ul></div><div id='HomeNews'><ul><li><table><tr><td align = 'left' valign = 'top'>-   </td><td align = 'left'><a href = 'http://www.britneyspears.com/BSNewsDetails2.aspx?NewsID=2115' target = '_parent'>Vote For "Scream & Shout" On Billboard!</a></td></tr></table></li></ul></div><div id='HomeNews'><ul><li><table><tr><td align = 'left' valign = 'top'>-   </td><td align = 'left'><a href = 'http://www.britneyspears.com/BSNewsDetails2.aspx?NewsID=2114' target = '_parent'>The "Scream & Shout" Remix Video Is Here!</a></td></tr></table></li></ul></div><div id='HomeNews'><ul><li><table><tr><td align = 'left' valign = 'top'>-   </td><td align = 'left'><a href = 'http://www.britneyspears.com/BSNewsDetails2.aspx?NewsID=2113' target = '_parent'>Britney Tweets New S&S Remix Video Photo!</a></td></tr></table></li></ul></div><div id='HomeNews'><ul><li><table><tr><td align = 'left' valign = 'top'>-   </td><td align = 'left'><a href = 'http://www.britneyspears.com/BSNewsDetails2.aspx?NewsID=2112' target = '_parent'>"Scream & Shout" Remix Video To Premiere Friday</a></td></tr></table></li></ul></div><div id='HomeNews'><ul><li><table><tr><td align = 'left' valign = 'top'>-   </td><td align = 'left'><a href = 'http://www.britneyspears.com/BSNewsDetails2.aspx?NewsID=2111' target = '_parent'>Britney Tweets New Puppy!</a></td></tr></table></li></ul></div><div id='HomeNews'><ul><li><table><tr><td align = 'left' valign = 'top'>-   </td><td align = 'left'><a href = 'http://www.britneyspears.com/BSNewsDetails2.aspx?NewsID=2109' target = '_parent'>"Scream & Shout" Remix on iTunes</a></td></tr></table></li></ul></div>
                            </div>
                            <div id="box3Bottom" class="boxBottom">
                                <div id="box3ImgLine" style="left: 0px; border-bottom: solid 1px #fff; position: absolute;
                                    height: 39px; width: 100%">
                                </div>
                                <div style="width: 284px; float: left;">
                                    <span id="lblBox3" class="homeLabels" onclick="SetPageLoc('BSNews2.aspx?IconID=1')"><p>READ MORE OF BRITNEY NEWS</p></span>
                                </div>
                                <div style="width: 16px; float: right; position: relative">
                                    <img src="http://www.britneyspears.com/images/content/minimize_icon.png" id="box3Img" style="cursor: pointer" alt="minimize" onclick="HideShowDiv('box3','top', 'box3Img', 'box3ImgLine')" />
                                </div>
                            </div>
                        </div>
                        
                        
                        <div id="box4" onclick="OpenNewWindow('http://bit.ly/itsbritneyapp')">
                            <div id="box4Main" style="position: relative;">
                                <div id="box4Left" class="boxLeft">
                                </div>
                                <div id="box4Right" class="boxRight">
                                </div>
                                <div id="box4Middle" class="boxMiddle" style="background:url(user_uploads/homeboximages/large/01062012024439.jpg);">
                                    <br /><div class='tourdetails' style='width:210px; border:solid 0px red'><ul><li class='date1'><span style = 'color:white;font-family:Helvetica;font-size: 11px; padding-left: 4px;'>&nbsp;<a href = 'http://bit.ly/itsbritneyapp' target = '_blank'></a></span></li></ul></div>
                                </div>
                            </div>
                            <div id="box4Bottom" class="boxBottom">
                                <div id="box4ImgLine" style="left: 0px; border-bottom: solid 1px #fff; position: absolute;
                                    height: 39px; width: 100%">
                                </div>
                                <div style="width: 284px; float: left;">
                                    <span id="lblBox4" class="homeLabels"><p>IT'S BRITNEY! APP</p></span>
                                </div>
                                <div style="width: 16px; float: right; position: relative">
                                    <img src="http://www.britneyspears.com/images/content/minimize_icon.png" id="box4Img" style="cursor: pointer" alt="minimize" onclick="HideShowDiv('box4','bottom', 'box4Img', 'box4ImgLine')" />
                                </div>
                            </div>
                        </div>
                        
                        
                        <div id="btmImg">
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
        <div id="footerWrapper" style="background-color: Transparent">
            <div id="sliderDiv" style="border: solid 0px red; position: relative; z-index: 50;
                background-color: Transparent; margin-top: 300px">
                <div style="height: 40px;">
                    <ul id="ticker01">
                        
                    </ul>
                </div>
                <div id="footerNav">
                    <a href="javascript:void(0)" onclick="LoadNavBox('BSSiteSections.aspx?Sec=Terms of Service','500', '600');">
                        Terms of Service </a>
                </div>
            </div>
        </div>
        
    </div>
    
    </form>
</body>
</html>
