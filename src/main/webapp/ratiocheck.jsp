<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action ="ratiocheck" method="get">
 	<label for="salary">salary</label><br>
 	<input type="text" id="salary" name="sal" onChange="checkSal()" required><br>
 	
 	<label for="need">need</label><br>
 	<input type="text" id="need" name="need" onChange="checkSal()" required><br>
 	
 	
 	<label for="want">want</label><br>
 	<input type="text" id="want" name="want" onChange="checkSal()" required><br>
 	
 	<label for="saving">saving</label><br>
 	<input type="text" id="saving" name="sav"><br>
 	
 	<input type="submit" value="calculate">
 </form>
<script>
	function checkSal(){
		const sal = document.getElementById('salary').value
		const need = document.getElementById('need').value
		const want = document.getElementById('want').value
		const saving = document.getElementById('saving') 
		console.log(sal,want,need)
		if(sal!=='' && need!=='' && want!==''){
			let data = sal-need-want
			console.log(data)
			saving.value=data
		}		
	}
</script>
</body>
</html>