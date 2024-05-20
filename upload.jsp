
<title> upload product</title>
<meta charset="UTF-8">
<meta name="viewpost" content="width=device-width, intial-scale=1.0">
</head>
<body align="center">
<h1>  Upload </h1>
<form action="myitems.jsp" >
<label for="item">Upload items:</label>
  <select id="item" name="items"><br><br>
    <option value="CASIO">Casio</option>
    <option value="DRAFTER">Drafter</option>
    <option value="BOOKS">books</option>
    <option value="OTHERS">others</option>
  </select><br><br>
 cost <input type="text" name="c"> <br>
 <div style="display:inline-block">
 <p align="center">Description</p>
  <textarea  name="d" rows="4" cols="50"  >
  </textarea>
  <br><br>
 
 
<input type="submit"/>
</div>
</form>

</body>
</html>