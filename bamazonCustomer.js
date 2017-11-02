var mysql = require("mysql"); 
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "127.0.0.1",
  port: 3306,
  user: "root",
  password: "237902",
  database: "bamazon"
});

connection.connect(function(err){  
  if (err) throw err;
  console.log("connected!");
  showProducts();
  // startShopping();

});

function showProducts(){
  connection.query("SELECT * FROM products", function(err, res){
    
    // display available products
    console.log("Item ID# | Product Name | Price");

    // for loop for displaying available products to customer
    for ( var i = 0 ; i < res.length ; i++ ){
      console.log(res[i].item_id + " | " +
                  res[i].product_name + " | " +
                  res[i].price);
    }
    connection.end();
  });  
}


// function selectProduct(){
//   inquirer.prompt({
//     type: "input",
//     name: "item_id-selected",
//     message: "To select your purchase from the products above, enter the Item ID# of the desired product:",

//   }).then(function(answer){
    
//     // determine if item id entered by user is available in products

//     // if available, run selectProductQuantity

//     // if unavailable, ask user to select another item
//   });

// }

// function selectProductQuantity(){

// }