var mysql = require("mysql");
var inquirer = require ("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  displayAllProducts();
});

// HERE ALL PRODUCTS WILL BE DISPLAYED
function displayAllProducts() {
  connection.query("SELECT * FROM products", function(error, res) {
    for (var i = 0; i < res.length; i++) {
      console.log(res[i].item_id + " | " + res[i].product_name + " | " + res[i].department_name + " | " + res[i].price);
    }
    console.log("-----------------------------------")
    console.log("-----------------------------------")
  });
}

function start(){
    inquirer.prompt([{
        name: "id",
        type: "input",
        message: "Enter the ID of the product you would like to purchase from the selection above.",
        filter: number,
        validate: function(value) {
            if (isNaN(value) == false) {
                return true;
            } else {
                return false;
            }
        }
        },{
        name: "quantity",
        type: "input",
        message: "How many would you like to purchase?",
        filter: number,
        validate: function(value) {
            if (isNaN(value) == false) {
                return true;
            } else {
                return false;
            }
        }
        }])
     .then(function(answer){
         var productId = ans.id -1;
         var customerProduct = res[productId];
         var productQuantity = ans.quantity;

         if (productQuantity < res[productId].stock_quantity){console.log("Your total is: " + res[productId].price.toFixed(2) * productQuantity)}
         connection.query("UPDATE products SET ? WHERE ?", [{stock_quantity: res[productId].stock_quantity - productQuantity},
         {id: res[productId].id}],
         function (err, res){
             console.log("not enough");
        });


    });
}
