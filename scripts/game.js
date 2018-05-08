var difficulty;
var num;

$("#restartButton").click(function () {
    $("#moves").html("");
})

$("#newGame").click(function () {
	if($("#difficulty").val()){
		
		difficulty = $("#difficulty").val();
		$("#game").show(0);

		num = generateNumber(difficulty);
		
	}else{
		
		alert("Моля изберете ниво на трудност!");
		
	}
    
    
})

$("#tryButton").click(function () {
    
    var Num = $("#number").val();
    var NumBulls = checkBulls(Num, num);
    var NumCows = checkCows(Num, num, difficulty);
	
    var turnTable = $("#moves")
    if (NumBulls == difficulty) {
        turnTable.append($("<li>Честито! Отговора е " + Num + "</li>"))
    } else {
        turnTable.append($("<li> Бикове: " + NumBulls + " Крави:" + NumCows + "</li> "))
    }
})

function checkBulls(a, b) {
    var result = 0;
    while (a != 0) {
        if (a%10 == b %10){
            result++;
        }
        a = Math.floor(a / 10);
        b = Math.floor(b / 10);
    }
    
    return result;
}

function checkCows(a, b, length) {
    
    var result = 0;
    for (var i = 0; i < length; i++) {
        for (var j = 0; j < length; j++) {
            if (GetNumAtPostion(a, i) == GetNumAtPostion(b, j) && i != j) {
                result ++;
            }
        }
    }

    return result;
}

function generateNumber(length){
	
	generatedNumber = '';

		for(var i = 0; i < length; i++){
			
			if(i == 0){
				
				generatedNumber = Math.floor(Math.random()*9+1).toString();
				
			}else{
				
				isRepeating = true;
				while(isRepeating){
					
					randomDigit = Math.floor(Math.random()*10).toString();
					isRepeating = false;
					for(var j = 0; j < generatedNumber.length; j++){
						
						if(generatedNumber[i] == randomDigit){
							
							isRepeating = true;
							
						}
						
					}
					
				}
				
				generatedNumber += randomDigit;
				
			}
			
			
			
		}
		
	return parseInt(generatedNumber);
	
}
	current_number = ''
	for (var i = 0; i < length; i++) {
		if (i == 0) {
			current_number += Math.floor(Math.random()*9+1).toString()
		}else{
			same = true
			while(same){
				rng = Math.floor(Math.random()*10).toString()
				same = false;
				for (var i = 0; i < current_number.length; i++) {
					if (current_number[i] == rng){
						same = true;
					}
				}
			}
			current_number += rng
		}
	}
	var result = parseInt(current_number);
	return result;
}

function GetNumAtPostion(n, pos) {
    return parseInt((n + "")[pos]);
}
