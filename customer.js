var mysql = require('mysql');
var inquirer = require('inquirer');
var Table = require("cli-table");

var connection = mysql.createConnection({
	host: 'localhost',
	port: 3306,
	user: 'root',
	password: 'root',
	database: 'herbinventory_db'
});


connection.connect(function(err) {

    if (err) throw err;

});

var showHerbTable = function() {

    connection.query("SELECT * FROM herbinventory", function(err, res) {
        if (err) throw err;

        var table = new Table ({
            head: ["ID", "Herb", "Qty Oz", "Retail Cost", "Category", "Organic"]
        });
  
        for (var i = 0; i < res.length; i++) {
            table.push([res[i].herbID, res[i].herb, res[i].qtyoz, res[i].retailcost, res[i].category, res[i].organic 
            ]);
        }
        console.log(table.toString());

        
        inquirer.prompt([{
            name: "herbId",
            type: "input",
            message: "Please, type the ID of the herb you would like to buy?",
            validate: function(value) {
                if (isNaN(value) === false) {
                    return true;
                } else {
                    return false;
                }
            }
        }, {
            name: "qtyoz",
            type: "input",
            message: "How many of ounces of this herb would you like to buy?",
            validate: function(value) {
             if (isNaN(value) === false) {
                 return true;
             } else {
                 return false;
             }
            }
        }]).then(function(answers) {
            var chosenID = answers.herbId;
            var chosenQtyOz = answers.qtyoz;
            buy(chosenID, chosenQtyOz);
        });
    });
};

function buy(chosenID, chosenQtyOz) {

	console.log(chosenQtyOz);
    connection.query("SELECT * FROM herbinventory WHERE herbid = " + chosenID, function(err, res) {
        if (err) throw err;
        
        if (chosenQtyOz <= res[0].qtyoz) {
            var totalCost = res[0].retailcost * chosenQtyOz;
            

            console.log("Your total is $" + totalCost + ". Thank you for your purchase!");
            
            connection.query("UPDATE herbinventory SET qtyoz = qtyoz - " + chosenQtyOz + " WHERE herbID = " + chosenID);
        	
        } else {

            console.log("We don't have enough of that herb to fulfill your order.");
        };
       
        showHerbTable();
    })
}
showHerbTable();