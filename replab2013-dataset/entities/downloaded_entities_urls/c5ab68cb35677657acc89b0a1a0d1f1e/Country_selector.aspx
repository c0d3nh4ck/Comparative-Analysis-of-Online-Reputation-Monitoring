

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html dir="ltr">
    <head><meta name="GENERATOR" content="Microsoft SharePoint" /><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="Expires" content="0" /><meta http-equiv="imagetoolbar" content="no" /><link rel="canonical" href="http://www.ferrari.com/Pages/Country_Selector.aspx"><script type="text/javascript" type="text/javascript">
// <![CDATA[
document.write('<script type="text/javascript" src="http://www.ferrari.com/_layouts/1033/init.js?rev=BjQJs0OCQh3Zfydsdw2MYw%3D%3D"></' + 'script>');
// ]]>
</script>
<title>
	
	Ferrari country selector

</title><link rel="stylesheet" type="text/css" href="http://www.ferrari.com/_layouts/1033/styles/Themable/corev4.css?rev=iIikGkMuXBs8CWzKDAyjsQ%3D%3D"/>

        
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="http://www.ferrari.com/style%20library/countryselector/fercountryselectormaster.css" />                
    <div style="position:absolute; top:0;">
	
        <meta name="KEYWORDS" content="Ferrari country selector, Ferrari world, Ferrari international">
<meta name="DESCRIPTION" content="Choose your country edition of the Ferrari Official website.">
        
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="http://www.ferrari.com/style%20library/countryselector/country/css/style.css" />
        
        <!-- Custom JS -->
        <script src="http://www.ferrari.com/style%20library/countryselector/country/js/jquery-1.4.4.min.js" type="text/javascript"></script>
        <script src="http://www.ferrari.com/style%20library/countryselector/country/js/jquery-ui-1.8.10.custom.min.js" type="text/javascript"></script>
        <script src="http://www.ferrari.com/style%20library/countryselector/country/js/jquery.ui.accordion.js" type="text/javascript"></script>
        <script src="http://www.ferrari.com/style%20library/countryselector/country/js/jquery.ui.core.js" type="text/javascript"></script>
        <script src="http://www.ferrari.com/style%20library/countryselector/country/js/jquery.ui.widget.js" type="text/javascript"></script>
        
        <script src="http://www.ferrari.com/style%20library/countryselector/country/js/jquery.effects.core.js" type="text/javascript"></script>
        <script src="http://www.ferrari.com/style%20library/countryselector/country/js/jquery.effects.blind2.js" type="text/javascript"></script>
        
        
	    <script type="text/javascript">

	        function GetQueryString() {
	            var qs = unescape(window.location.search.substring(1));
	            if (qs != '') {
	                qs = decodeURI(qs);
	            }

	            return qs;
	        }

	        function CheckIgnoreCookie(ignoreCookieKey) {
	            var ignoreCookie = false;
	            var qs = GetQueryString();
	            if (qs != '') {
	                var qsvalues = qs.split("&");
	                for (i = 0; i < qsvalues.length; i++) {
	                    var qsSingleValue = qsvalues[i].split("=");
	                    if ((qsSingleValue[0] == ignoreCookieKey) && (qsSingleValue[1] == 'True')) {
	                        ignoreCookie = true;
	                    }
	                }
	            }

	            return ignoreCookie;
	        }

	        function GetCountrySelectionCookie(cookieName) {
	            var cookieContent = new String();
	            if (document.cookie.length > 0) {
	                cookieName = cookieName + '=';
	                var cookieBegin = document.cookie.indexOf(cookieName);
	                var cookieEnd = 0;
	                if (cookieBegin > -1) {
	                    cookieBegin += cookieName.length;
	                    cookieEnd = document.cookie.indexOf(';', cookieBegin);
	                    if (cookieEnd < cookieBegin) { cookieEnd = document.cookie.length; }
	                    cookieContent = document.cookie.substring(cookieBegin, cookieEnd);
	                }
	            }

	            return cookieContent;
	        }

	        function RedirectFromCookie(cookieName, gatewayPageUrl, countryIdKey, countryTitleKey, ignoreCookieKey) {
	            var ignoreCookie = CheckIgnoreCookie(ignoreCookieKey);

	            if (ignoreCookie == false) {
	                var cookieContent = GetCountrySelectionCookie(cookieName);

	                if (cookieContent != '') {
	                    cookieContent = unescape(cookieContent);
	                    var cookieContentArr = cookieContent.split(';#');
	                    if (cookieContentArr.length == 8) {
	                        var countryTitleValue = cookieContentArr[2].split('|');
	                        countryTitleValue = countryTitleValue[0].split('(');
	                        countryTitleValue = countryTitleValue[0].replace(/^\s+|\s+$/g, "");

	                        window.location.href = gatewayPageUrl + "?" + countryIdKey + "=" + cookieContentArr[0] + "&" + countryTitleKey + "=" + countryTitleValue;
	                    }
	                }
	            }
	        }

	        function RedirectFromIPLocator(gatewayPageUrl, countryIdKey, countryId, countryTitleKey, countryTitle, ignoreCookieKey) {
	            var ignoreCookie = CheckIgnoreCookie(ignoreCookieKey);

	            if (ignoreCookie == false) {
	                window.location.href = gatewayPageUrl + "?" + countryIdKey + "=" + countryId + "&" + countryTitleKey + "=" + countryTitle;
	            }
	        }

	        function SelectOldCountry(countryIdKey) {
	            var doSelect = false;
	            var countryIdToSelect = 0;
	            var qs = GetQueryString();
	            if (qs != '') {
	                var qsvalues = qs.split("&");
	                for (i = 0; i < qsvalues.length; i++) {
	                    var qsSingleValue = qsvalues[i].split("=");
	                    if (qsSingleValue[0] == countryIdKey) {
	                        doSelect = true;
	                        countryIdToSelect = qsSingleValue[1];
	                    }
	                }
	            }

	            if ((doSelect == true) && (countryIdToSelect > 0)) {
	                $("#countryAccordion").find('*[countryId]').each(function(index) {
	                    if (this.getAttribute('countryId') == countryIdToSelect) {
	                        var previousClass = this.className;
	                        if ((previousClass == null) || (previousClass == '')) {
	                            this.className = 'previous';
	                        }
	                        else {
	                            this.className = previousClass + ' ' + 'previous';
	                        }

	                        var section = this.getAttribute('sectionNum');
	                        if (section != '') {
	                            $(function() {
	                                $("#countryAccordion").accordion({
	                                    active: parseInt(section),
	                                    collapsible: true,
	                                    autoHeight: false,
	                                    navigation: true
	                                });
	                            });
	                        }
	                    }
	                });
	            }
	        }
            
        </script>
        
	    <script type="text/javascript">

	        $(function() {
	            $("#countryAccordion").accordion({
	                active: false,
	                collapsible: true,
	                autoHeight: false,
	                navigation: true
	            });
	        });
	    
	    </script>
	    
	    <script type="text/javascript">

	        if (document.addEventListener) {
	            document.addEventListener('click', function(e) {
	                window.event = e;
	            }, true);
	        }

	        var clickedd = 'true';
	        function determine() {
	            var src = event.target || event.srcElement;
	            clickedd = 'true';
	        }

	        $(function() {

	            // run the currently selected effect
	            function runEffect() {

	                // get effect type from 
	                var selectedEffect = 'blind';

	                // most effect types need no options passed by default
	                var options = {};

	                if (clickedd == 'true') {

	                    $("#countryVersion").hide();
	                    $("#countryFooterContent").show("blind", { direction: "down" }, 400);

	                    clickedd = 'false';
	                    return false;
	                }
	                else {
	                    return false;
	                }
	            };

	            //callback function to bring a hidden box back
	            function callback() {
	                $("#countryVersion").show();
	            };
	            function runEffect1() {
	                // get effect type from 
	                var selectedEffect = 'blind';

	                // most effect types need no options passed by default
	                var options = {};

	                // run the effect
	                $("#countryFooterContent").delay(2000).hide("blind", { direction: "down" }, 500, callback);

	                return false;
	            };



	            // set effect from select menu value
	            $("#countryVersion").click(function() {
	                runEffect();
	            });
	            
	            $("#countryFooterBar").mouseenter(function() {
	                return false;
	            });

	            $("#countryVersion").mouseenter(function() {
	                return false;
	            });

	            $("#countryFooterContent").mouseenter(function() {
	                return false;
	            });

	            $("#countryFooterInnerTable").mouseleave(function() {
	                if (clickedd == 'false') {
	                    runEffect1();
	                    clickedd = 'true';
	                }

	                return false;
	            });

	            $("#countryFooterContent").hide();
	        });
	        
	    </script>
		
		
        
	
</div>
<meta property="og:title" content="Ferrari country selector" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://www.ferrari.com/Pages/Country_selector.aspx" />
<meta property="og:site_name" content="Ferrari.com" />
<span></span><link rel="canonical" href="http://www.ferrari.com/Pages/Country_Selector.aspx"></head>
    
    <body onload="javascript:_spBodyOnLoadWrapper();" class="fer_countryselector">
        
            <script type='text/javascript' language='javascript'>

                function getCookie(NameOfCookie) {
                    if (document.cookie.length > 0) {

                        begin = document.cookie.indexOf(NameOfCookie + '=');
                        if (begin != -1) {
                            begin += NameOfCookie.length + 1;
                            end = document.cookie.indexOf(';', begin);
                            if (end == -1) end = document.cookie.length;
                            return unescape(document.cookie.substring(begin, end));
                        }
                    }
                    return null;
                }
                // var utmv = getCookie('__utmv');  var splitted = utmv.split('.');  var ruolo = splitted[1];
            </script>

            <script type='text/javascript' language='javascript'>
                var gaJsHost = (('https:' == document.location.protocol) ? 'https://ssl.' : 'http://www.');
                document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
            </script>

            <script type='text/javascript' language='javascript'>
                var pageTracker = _gat._getTracker('UA-6300300-1');
                pageTracker._initData();
                pageTracker._setDomainName('.ferrari.com');
                pageTracker._trackPageview();
            </script>

            <script type='text/javascript' language='javascript'>

                var ruolo = getCookie('roleGoogleAnalytics');
                if  (ruolo != null) {
                    pageTracker._setVar(ruolo);
                }
                
            </script>
        
        
        
        
        <form name="aspnetForm" method="post" action="Country_selector.aspx" id="aspnetForm">
<div>
<input type="hidden" name="MSOWebPartPage_PostbackSource" id="MSOWebPartPage_PostbackSource" value="" />
<input type="hidden" name="MSOTlPn_SelectedWpId" id="MSOTlPn_SelectedWpId" value="" />
<input type="hidden" name="MSOTlPn_View" id="MSOTlPn_View" value="0" />
<input type="hidden" name="MSOTlPn_ShowSettings" id="MSOTlPn_ShowSettings" value="False" />
<input type="hidden" name="MSOGallery_SelectedLibrary" id="MSOGallery_SelectedLibrary" value="" />
<input type="hidden" name="MSOGallery_FilterString" id="MSOGallery_FilterString" value="" />
<input type="hidden" name="MSOTlPn_Button" id="MSOTlPn_Button" value="none" />
<input type="hidden" name="__REQUESTDIGEST" id="__REQUESTDIGEST" value="0xB016E4725BC0745D2FA2CAE37B8A4224FC648B78ADF5719401ECAE149DBE49F0896135C55D124C68B24E3C261BAEADAF229439D58692C5724363AA85149485DA,12 Apr 2013 15:16:28 -0000" />
<input type="hidden" name="MSOSPWebPartManager_DisplayModeName" id="MSOSPWebPartManager_DisplayModeName" value="Browse" />
<input type="hidden" name="MSOSPWebPartManager_ExitingDesignMode" id="MSOSPWebPartManager_ExitingDesignMode" value="false" />
<input type="hidden" name="MSOWebPartPage_Shared" id="MSOWebPartPage_Shared" value="" />
<input type="hidden" name="MSOLayout_LayoutChanges" id="MSOLayout_LayoutChanges" value="" />
<input type="hidden" name="MSOLayout_InDesignMode" id="MSOLayout_InDesignMode" value="" />
<input type="hidden" name="MSOSPWebPartManager_OldDisplayModeName" id="MSOSPWebPartManager_OldDisplayModeName" value="Browse" />
<input type="hidden" name="MSOSPWebPartManager_StartWebPartEditingName" id="MSOSPWebPartManager_StartWebPartEditingName" value="false" />
<input type="hidden" name="MSOSPWebPartManager_EndWebPartEditing" id="MSOSPWebPartManager_EndWebPartEditing" value="false" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUBMA9kFgJmD2QWAgIBD2QWBgIBEGRkFgQCCA9kFgJmD2QWAgIBDxYCHhNQcmV2aW91c0NvbnRyb2xNb2RlCymIAU1pY3Jvc29mdC5TaGFyZVBvaW50LldlYkNvbnRyb2xzLlNQQ29udHJvbE1vZGUsIE1pY3Jvc29mdC5TaGFyZVBvaW50LCBWZXJzaW9uPTE0LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPTcxZTliY2UxMTFlOTQyOWMBZAIND2QWAgIBD2QWAgIBD2QWBGYPFgIeBFRleHQFXzxtZXRhIG5hbWU9IktFWVdPUkRTIiBjb250ZW50PSJGZXJyYXJpIGNvdW50cnkgc2VsZWN0b3IsIEZlcnJhcmkgd29ybGQsIEZlcnJhcmkgaW50ZXJuYXRpb25hbCI+ZAICDxYCHwEFYDxtZXRhIG5hbWU9IkRFU0NSSVBUSU9OIiBjb250ZW50PSJDaG9vc2UgeW91ciBjb3VudHJ5IGVkaXRpb24gb2YgdGhlIEZlcnJhcmkgT2ZmaWNpYWwgd2Vic2l0ZS4iPmQCBw9kFgICAQ9kFgQCAQ9kFgQCAQ9kFgICAQ8WAh4HVmlzaWJsZWgWAmYPZBYEAgIPZBYCAgMPFgIfAmhkAgMPDxYKHglBY2Nlc3NLZXkFAS8eD0Fycm93SW1hZ2VXaWR0aAIFHhBBcnJvd0ltYWdlSGVpZ2h0AgMeEUFycm93SW1hZ2VPZmZzZXRYZh4RQXJyb3dJbWFnZU9mZnNldFkC6wNkZAIDD2QWAgICEA8WBh4IQ3NzQ2xhc3MFDXM0LXNpZ25JbkxpbmseBF8hU0ICAh8CZxYCHgVzdHlsZQUPZGlzcGxheTppbmxpbmU7ZGQCBQ9kFgICAQ8PFgIeL2N0bDAwX1BsYWNlSG9sZGVyTWFpbl9jdGwwMl9md0NvdW50cnlHYXRld2F5VXJsBRMvUGFnZXMvR2F0ZXdheS5hc3B4ZBYEAgUPFgQfCgUQQmFja2dyb3VuZDpub25lOx4JaW5uZXJodG1sBewBPGJvZHk+IDxjZW50ZXI+PGRpdiBzdHlsZT0ncGFkZGluZy10b3A6IDI2M3B4IDsgaGVpZ2h0OiA0MDlweDsgbGVmdDogMDsgb3ZlcmZsb3c6IGhpZGRlbjsgcG9zaXRpb246IGFic29sdXRlO3RvcDogMDt3aWR0aDogMTAwJTt6LWluZGV4OiAwOyc+PGltZyBzcmM9Jy9zdHlsZSBsaWJyYXJ5L2NvdW50cnlzZWxlY3Rvci9nYXRld2F5L2dmeC9zcHJpdGU2LmdpZic+PC9kaXY+PC9jZW50ZXI+PC9ib2R5PjwvaHRtbD5kAgcPFgIfAmgWAgIBD2QWAgIBDxYCHwJoZAIPD2QWAgIBDw8WAh5HY3RsMDBfUGxhY2VIb2xkZXJDb3VudHJ5UmVkaXJlY3RfZndDb3VudHJ5X1JlZGlyZWN0RnJvbUNvb2tpZUdhdGV3YXlVcmwFEy9QYWdlcy9HYXRld2F5LmFzcHhkFgICAQ8WAh8BBXFSZWRpcmVjdEZyb21Db29raWUoJ0ZlcnJhcmlTZWxlY3RlZENvdW50cnknLCAnL1BhZ2VzL0dhdGV3YXkuYXNweCcsICdDb3VudHJ5SWQnLCAnQ291bnRyeVRpdGxlJywgJ0lnbm9yZUNvb2tpZScpO2RkJzNIjTB76ZofdYwFDcvgLjKzuAc=" />
</div>


<script src="http://www.ferrari.com/WebResource.axd?d=NnmpdSvRLjkFwqARtlrX9fxCgFwioG45VjaRB_KyKsMBo2qr27s5dXWRSgmGBQ84peObkwbPS_AIOvxfbigeESgCvMLL9-KhRt5rjTs99vCJB0AG5Wa44-ZDWf8Ln4BAaegG6FdNlUTtUJkQfHfk3kl4owYn8wZ-hWczVI1Q-iOWHLxmwtvAfq0EVrwLHmg0I-5tX2DNDunRU21bIA0K5MuwINY1&amp;t=634890060367746194" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
var MSOWebPartPageFormName = 'aspnetForm';
var g_presenceEnabled = true;var _fV4UI=true;var _spPageContextInfo = {webServerRelativeUrl: "\u002f", webLanguage: 1033, currentLanguage: 1033, webUIVersion:4,pageListId:"{cc580beb-ceb1-415d-a8e2-4c4671accac0}",pageItemId:348, alertsEnabled:true, siteServerRelativeUrl: "\u002f", allowSilverlightPrompt:'True'};document.onreadystatechange=fnRemoveAllStatus; function fnRemoveAllStatus(){removeAllStatus(true)};//]]>
</script>

<script src="http://www.ferrari.com/WebResource.axd?d=EenwmYTdujv-eqPI4drkVbTAQCtG0xpo8MVAhbOv-v7hic8SJIWu4tNt89E7rl7NBF0gRBPezi2UdKTibkQfPhNynnP-8IGNS9xJP1A5fEOsw-40_XiWJSL9i74cgCxdX2dSu7tFZ5c3tfCdXwTlpa__mQA1&amp;t=634604461356786412" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
if (typeof(DeferWebFormInitCallback) == 'function') DeferWebFormInitCallback();//]]>
</script>

<div>

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWAwKO+ZC6CQLUvYN6Ar+Yj5oKrCNNkLPieX59VeCgvkqJSzafkTA=" />
</div>
    			
                
    
    
    
    
    <div class="countryEditPanel">
	
        


<div id="countryMain">
    <div id="countryContainer">
        <input type="hidden" name="ctl00$PlaceHolderMain$ctl02$fwCountry$hdfCountryId" id="ctl00_PlaceHolderMain_ctl02_fwCountry_hdfCountryId" />
        <input type="hidden" name="ctl00$PlaceHolderMain$ctl02$fwCountry$hdfCountryTitle" id="ctl00_PlaceHolderMain_ctl02_fwCountry_hdfCountryTitle" />
        
        <div class="container">
            <div id="ctl00_PlaceHolderMain_ctl02_fwCountry_cs_image" class="cs_images" style="Background:none;"><body> <center><div style='padding-top: 263px ; height: 409px; left: 0; overflow: hidden; position: absolute;top: 0;width: 100%;z-index: 0;'><img src='http://www.ferrari.com/style%20library/countryselector/gateway/gfx/sprite6.gif'></div></center></body></html></div>
        </div>
    </div>
    
    <div id="countryPush"></div>
</div>


<div id="countryFooter_FORSEO">
    <table id="countryFooterTable_FORSEO" cellspacing="0" cellpadding="0" border="0">
        <tr>
            <td>
                <table id="countryFooterInnerTable_FORSEO" cellspacing="0" cellpadding="0" border="0">
                    <tr>
                        <td height="140">

                            <div id="countryFooterContent_FORSEO">
                                
                                <div class="language1">
                                    <div class="lang2"><font class="titreLang">English</font></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/English/GT_Sport%20Cars" onClick="determine();">GT&Sport Cars</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/English/Formula1" target="_blank" onClick="determine();">Formula 1</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://store.ferrari.com/en/Index?utm_source=ferrari.com&utm_medium=pulsante&utm_campaign=store_hpferrari_en" target="_blank" onClick="determine();">Ferrari Store</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://magazine.ferrari.com/" target="_blank" onClick="determine();">Magazine</a></div>
                                </div>

                                <div class="language2">
                                    <div class="lang2"><font class="titreLang">Italiano</font></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/Italian/GT_Sport_Cars" onClick="determine();">GT&Sport Cars</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/Italian/Formula1" target="_blank" onClick="determine();">Formula 1</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://store.ferrari.com/it/Index?utm_source=ferrari.com&utm_medium=pulsante&utm_campaign=store_hpferrari_it" target="_blank" onClick="determine();">Ferrari Store</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://magazine.ferrari.com/it/" target="_blank" onClick="determine();">Magazine</a></div>
                                </div>
                                
                                <div class="language2">
                                    <div class="lang2"><font class="titreLang">Fran&#231;ais</font></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/French/GT_Sport_Cars" onClick="determine();">GT&Sport Cars</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/English/Formula1" target="_blank" onClick="determine();">Formula 1</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://store.ferrari.com/fr/Index?utm_source=ferrari.com&utm_medium=pulsante&utm_campaign=store_hpferrari_fr" target="_blank" onClick="determine();">Ferrari Store</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://magazine.ferrari.com/" target="_blank" onClick="determine();">Magazine</a></div>
                                </div>

                                <div class="language2">
                                    <div class="lang2"><font class="titreLang">Espa&#241;ol</font></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/Spanish/GT_Sport_Cars" onClick="determine();">GT&Sport Cars</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/English/Formula1" target="_blank" onClick="determine();">Formula 1</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://store.ferrari.com/es/Index?utm_source=ferrari.com&utm_medium=pulsante&utm_campaign=store_hpferrari_es" target="_blank" onClick="determine();">Ferrari Store</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://magazine.ferrari.com/" target="_blank" onClick="determine();">Magazine</a></div>
                                </div>

                                <div class="language2">
                                    <div class="lang2"><font class="titreLang">Deutsch</font></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/German/GT_Sport_Cars" onClick="determine();">GT&Sport Cars</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/English/Formula1" target="_blank" onClick="determine();">Formula 1</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://store.ferrari.com/de/Index?utm_source=ferrari.com&utm_medium=pulsante&utm_campaign=store_hpferrari_de" target="_blank" onClick="determine();">Ferrari Store</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://magazine.ferrari.com/" target="_blank" onClick="determine();">Magazine</a></div>
                                </div>

                                <div class="language2">
                                    <div class="lang2"><font class="titreLang">中文</font></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.cn/Chinese/GT_Sport Cars" onClick="determine();">GT&Sport Cars</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/English/Formula1" target="_blank" onClick="determine();">Formula 1</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://store.ferrari.com/en/Index?utm_source=ferrari.com&utm_medium=pulsante&utm_campaign=store_hpferrari_cn" target="_blank" onClick="determine();">Ferrari Store</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://magazine.ferrari.com/" target="_blank" onClick="determine();">Magazine</a></div>
                                </div>

                                <div class="language2">
                                    <div class="lang2"><font class="titreLang">日本語</font></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/Japanese/GT_Sport%20Cars" onClick="determine();">GT&Sport Cars</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://www.ferrari.com/English/Formula1" target="_blank" onClick="determine();">Formula 1</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://store.ferrari.com/en/Index?utm_source=ferrari.com&utm_medium=pulsante&utm_campaign=store_hpferrari_jp" target="_blank" onClick="determine();">Ferrari Store</a></div>
                                    <div class="lang"><a class="titreLang1" href="http://magazine.ferrari.com/" target="_blank" onClick="determine();">Magazine</a></div>
                                </div>

                            </div>

                        </td>
                    </tr>  
                </table>
            </td>
        </tr>
    </table>
</div>

<script>
            document.getElementById('countryFooter_FORSEO').style.visibility='hidden';
</script>


    
</div>
    

    

        
            
        

<script type="text/javascript">
//<![CDATA[
var _spFormDigestRefreshInterval = 1440000;SelectOldCountry('CountryId');
function EnsureScripts(scriptInfoList, finalFunction)
{
if (scriptInfoList.length == 0)
{
finalFunction();
}
else
{
var scriptInfo = scriptInfoList.shift();
var rest = function () { EnsureScripts(scriptInfoList, finalFunction); };
var defd;
try
{
eval('defd = typeof(' + scriptInfo[1] + ');');
}
catch (e)
{
defd = 'undefined';
}
if (scriptInfo[2])
{
EnsureScript(scriptInfo[0], defd, null);
ExecuteOrDelayUntilScriptLoaded(rest, scriptInfo[0]);
}
else
{
EnsureScript(scriptInfo[0], defd, rest);
}
}
}
function PublishingRibbonUpdateRibbon()
{
var pageManager = SP.Ribbon.PageManager.get_instance();
if (pageManager)
{
pageManager.get_commandDispatcher().executeCommand('appstatechanged', null);
}
}var _fV4UI = true;var __wpmExportWarning='This Web Part Page has been personalized. As a result, one or more Web Part properties may contain confidential information. Make sure the properties contain information that is safe for others to read. After exporting this Web Part, view properties in the Web Part description file (.WebPart) by using a text editor such as Microsoft Notepad.';var __wpmCloseProviderWarning='You are about to close this Web Part.  It is currently providing data to other Web Parts, and these connections will be deleted if this Web Part is closed.  To close this Web Part, click OK.  To keep this Web Part, click Cancel.';var __wpmDeleteWarning='You are about to permanently delete this Web Part.  Are you sure you want to do this?  To delete this Web Part, click OK.  To keep this Web Part, click Cancel.';//]]>
</script>
<script type="text/javascript">
// <![CDATA[
// ]]>
</script>
<script type="text/javascript">RegisterSod("sp.core.js", "\u002f_layouts\u002fsp.core.js?rev=7ByNlH\u00252BvcgRJg\u00252BRCctdC0w\u00253D\u00253D");</script>
<script type="text/javascript">RegisterSod("sp.res.resx", "\u002f_layouts\u002fScriptResx.ashx?culture=en\u00252Dus\u0026name=SP\u00252ERes\u0026rev=b6\u00252FcRx1a6orhAQ\u00252FcF\u00252B0ytQ\u00253D\u00253D");</script>
<script type="text/javascript">RegisterSod("sp.ui.dialog.js", "\u002f_layouts\u002fsp.ui.dialog.js?rev=IuXtJ2CrScK6oX4zOTTy\u00252BA\u00253D\u00253D");RegisterSodDep("sp.ui.dialog.js", "sp.core.js");RegisterSodDep("sp.ui.dialog.js", "sp.res.resx");</script>
<script type="text/javascript">RegisterSod("core.js", "\u002f_layouts\u002f1033\u002fcore.js?rev=1VDxRR0oL3\u00252FEtgWNP2\u00252BGbQ\u00253D\u00253D");</script>
<script type="text/javascript">RegisterSod("sp.runtime.js", "\u002f_layouts\u002fsp.runtime.js?rev=9sKdsC9N6p2BiRk3313M7Q\u00253D\u00253D");RegisterSodDep("sp.runtime.js", "sp.core.js");RegisterSodDep("sp.runtime.js", "sp.res.resx");</script>
<script type="text/javascript">RegisterSod("sp.js", "\u002f_layouts\u002fsp.js?rev=qBNQA0vLC3xm6SE69K2hzw\u00253D\u00253D");RegisterSodDep("sp.js", "sp.core.js");RegisterSodDep("sp.js", "sp.runtime.js");RegisterSodDep("sp.js", "sp.ui.dialog.js");RegisterSodDep("sp.js", "sp.res.resx");</script>
<script type="text/javascript">RegisterSod("cui.js", "\u002f_layouts\u002fcui.js?rev=k\u00252B4HtUzT9\u00252B3mSycgD7gPaQ\u00253D\u00253D");</script>
<script type="text/javascript">RegisterSod("inplview", "\u002f_layouts\u002finplview.js?rev=lxCL6dT9E0o\u00252F9jNw7YlGng\u00253D\u00253D");RegisterSodDep("inplview", "core.js");RegisterSodDep("inplview", "sp.js");</script>
<script type="text/javascript">RegisterSod("ribbon", "\u002f_layouts\u002fsp.ribbon.js?rev=F\u00252BUEJ66rbXzSvpf7nN69wQ\u00253D\u00253D");RegisterSodDep("ribbon", "core.js");RegisterSodDep("ribbon", "sp.core.js");RegisterSodDep("ribbon", "sp.js");RegisterSodDep("ribbon", "cui.js");RegisterSodDep("ribbon", "sp.res.resx");RegisterSodDep("ribbon", "sp.runtime.js");RegisterSodDep("ribbon", "inplview");</script>
<script type="text/javascript">RegisterSod("sp.publishing.resources.resx", "\u002f_layouts\u002fScriptResx.ashx?culture=en\u00252Dus\u0026name=SP\u00252EPublishing\u00252EResources\u0026rev=q6nxzZIVVXE5X1SPZIMD3A\u00253D\u00253D");</script>
<script type="text/javascript">RegisterSod("sp.ui.pub.ribbon.js", "\u002f_layouts\u002fsp.ui.pub.ribbon.js?rev=RGQSBI9Dm0E345iq\u00252FxUpHg\u00253D\u00253D");</script>
<script type="text/javascript">RegisterSod("msstring.js", "\u002f_layouts\u002f1033\u002fmsstring.js?rev=QtiIcPH3HV7LgVSO7vONFg\u00253D\u00253D");</script>
<script type="text/javascript">RegisterSod("browserScript", "\u002f_layouts\u002f1033\u002fnon_ie.js?rev=EVTj1bu32\u00252FMla6SDN\u00252FsNTA\u00253D\u00253D");</script>
<script type="text/javascript">RegisterSodDep("browserScript", "msstring.js");</script></form>
        
        
            <div style='display: none;'>
                <!-- Google Code for visitors of ferrari.com Remarketing List -->
                <script type='text/javascript'>
                    <!--
                        var google_conversion_id = 1034107285;
                        var google_conversion_language = 'en';
                        var google_conversion_format = '1';
                        var google_conversion_color = '666666';
                        var google_conversion_label = 'N5yBCMP2yQEQlfOM7QM';     
                        var google_conversion_value = 0;
                    //-->
                </script>

                <script type='text/javascript' src='http://www.googleadservices.com/pagead/conversion.js'></script>

                <noscript>
                    <div style='display:inline;'><img id='imageConversion' height='1' src='Country_selector.aspx' width='1' style='border-style: none;' alt='' /></div>
                </noscript>
            </div>
        
        
		
        
            
    
        

<script type="text/javascript">

    RedirectFromCookie('FerrariSelectedCountry', '/Pages/Gateway.aspx', 'CountryId', 'CountryTitle', 'IgnoreCookie');

</script>
		<script type="text/javascript">RedirectFromIPLocator('/Pages/Gateway.aspx', 'CountryId', '127', 'CountryTitle', 'Spain', 'IgnoreCookie');</script>
    
    
    </body>
</html>
<!-- Rendered using cache profile:Public Internet (Purely Anonymous) at: 2013-04-12T17:16:28 -->