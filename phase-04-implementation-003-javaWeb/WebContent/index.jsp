<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic10.jpg);
	background-color: #000000;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '1000px',
			top : '20px'
		}, 30000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$("#hornor").fadeIn('slow');

		$("#hornor").animate({
			fontSize : '30px',
		    top:  '25%',
		    left: '50px'
		}, 3000);
		
		$('#poem-txt').fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
	function onWaitingAudioEnd(){
		$('#intr')[0].play();	
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/666.wav" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/wanderingEarch-poem.mp3"
		preload="auto"></audio>
    <span id="firstline" style="font-size: 22px; color: white">大家好，我是这学期学习“软件工程导论”的学生准备设计和实现一个“<span
		style="font-size: 38px; color: red">哪吒之魔童降世</span>”的模拟工程！ 欢迎大家观赏,谢谢请点击哪吒
	</span>
	<audio id="waiting" src="/static/audio/music.mp3" preload="auto" onended="onWaitingAudioEnd();"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 30px; color: red; position:absolute; left :10px;top:50px" >
		《"哪吒之魔童降世"》<br /> <span style="font-size: 18px; color: grey">
			-陈益飞</span><br /> <br />今日是我的生日宴，你们谁都不许哭 。 <br /> 替天行道是使命，斩妖除魔我最擅长。<br />脚踩星河踏月，不惧万敌我在。
	</div>
	<img src="/static/imgs/pic11.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 100px"
		onclick="run(this);return false" 
		title="点击后，开始欣赏 ！"
		/>
	<div id="moviebox" style="margin-top: 200px; display: none"
		align="center">
		<video id="movie" height="500px" controls="controls"
			src="/static/video/movie1.mp4" onended="onVideoEnd();" />
			</div>
	<div id="hornor" style="display:none;position:absolute;left:1000x; bottom:500px;color:white;font-size:18px" align="center"><span style="color:red">2019年中国又迎来了一部除了2015年《大圣归来》外的又一部好看的动漫《哪吒之魔童降世》<span style="color:orange">在此向导演饺子</span>和<span style="color:orange">剧组人员</span><span style="color:red">表示致敬 !<br/> <span style="color:red"> 2019 年，《哪吒之魔童降世》 票房越来越好中国的电影也越来越好 <br/><span style="color:red">这是一代中国人的心血，我们在建设我们的国家越来也美好而奋斗，为中华民主崛起而奋斗！</div>
</body>
</html>