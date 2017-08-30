<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>google地图</title>
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/arcgis_js_api/library/3.4/3.4/js/dojo/dijit/themes/tundra/tundra.css"/>
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/arcgis_js_api/library/3.4/3.4/js/esri/css/esri.css" />
    <script type="text/javascript" src="http://localhost:8080/arcgis_js_api/library/3.4/3.4/init.js"></script>
    <script type="text/javascript" src="js/google.js"></script>
	<script type="text/javascript" src="js/initMap.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript">
     $(function() {
		dojo.require("esri.map");
		/**
		 * 加载init()
		 * 初始化
		 */
	    dojo.addOnLoad(init);
	});
	/**
	 * 初始化地图
	 */
    function init() {
        map = new esri.Map("map");
		/**
		 * 添加鼠标事件的监听
		 */
		dojo.connect(map, "onLoad", function() {
           setConnect();
		   start();
        });
        var layer = new GoogleMapLayer();
		var layerAnoo = new GoogleAnooLayer()
        map.addLayer(layer);
		map.addLayer(layerAnoo);
    }
	/**
     * 程序加载完成
     */
    function start()
    {
		initMap(122.073228, 41.141248,13);
		porntAction(122.073228, 41.141248,"test","img/1.png");
    }
    </script>
  </head>

  <body class="tundra">
    <div id="map" style="width:100%; height:600px; border:1px solid #000;" dojotype="dijit.layout.ContentPane" region="center"></div>
  </body>

</html>
