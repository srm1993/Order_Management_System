<?php
@include 'config.php';

if(isset($_POST['add'])){

  @$productid=$_REQUEST['productid']; 
  @$name=$_REQUEST['name'];
  @$productqty=$_REQUEST['productqty'];
  @$unitprice=$_REQUEST['unitprice'];
  @$orderdate=$_REQUEST['orderdate'];
  include_once 'config.php';

  $sql="INSERT INTO Order_Master (productid, orderdate, orderqty) 
  VALUES ('$productid','$orderdate','$productqty')";
  mysqli_query($conn,$sql);
  if(mysqli_affected_rows($conn)>0) {
    $message[] = 'please fill out all!';  
  } else{
    echo "some error!";
  }
}
if(isset($_GET['delete'])){
 $orderid = $_GET['delete'];
 mysqli_query($conn, "DELETE FROM order_master WHERE orderid = '$orderid'");
 header('location:index.php');
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
 <title>admin page</title>

 <!-- font awesome cdn link  -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

 <!-- custom css file link  -->
 <link rel="stylesheet" href="style.css">
 <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
 crossorigin="anonymous"></script>

 <script type="text/javascript">
  $(document).ready(function(){
    $("#name").blur(function()
    {
      var errorproduct_qty = true;
      function validproductqty(){
        productqty = parseInt($('#productqty').val());
        productqtyOld = parseInt($('#productqtyOld').val());
        if (productqtyOld >= productqty) {
          errorproductqty = true;
        } else {
          errorproductqty = false;
        }
      }
      $("#btn").click(function(){
        validproductqty();
        if (errorproductqty) {
          return true;
        } else {
          return false;
        }
      })
      $.ajax({
        type: "POST",
        url: "product.php",
        dataType: "JSON",
        data: {name:$("#name").val()},
        success:function(res){
          if (res) {
            $("#errorProductName").html("&#x2611;");
            $("#unitprice").val(res.unitprice);
            $("#productqtyOld").val(res.productqty);
            $("#productid").val(res.productid);
            $("#unitprice").val(res.unitprice);
            $("#btn").attr("disabled", false);
            
          } else {
            $("#errorProductName").html("product not available");
            $("#unitprice").val("");
            $("#productqtyOld").val("");
            $("#productid").val("");
            $("#unitprice").val("");
            $("#btn").attr("disabled", true);

          }
        }
      })

    })

  })

  $("#form").validate({
    rule:{
      name:{
       name:true
     },
     messages:{
       required:'please enter product name'
     }
   }

 });
</script>
</head>
<body>
  <div class="container">
  <h1>Order Details</h1>
   <div class="admin-product-form-container">
    
     <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
       
       Available Products:<select  class="box">
         <option value="">- Check Product  -</option>
         <option value="Mobile Phone">Mobile Phone </option>
         <option value="Head Phone">Head Phone </option>
         <option value="Power Bank">Power Bank </option>
       </select>
       Enter Product Name :
       <input type="text" class="box" name="name" id="name" required/> <h5><span id="errorProductName"></span></h5>
       
       Product Rate :
       <input type="text" class="box" name="unitprice" readonly id="unitprice" required />

       Order date:
       <input type="date" class="box" name="orderdate" id="orderdate"  required/>
       
       Product Qty:
       <input type="number" class="box" name="productqty" id="productqty"  required/>
       <input type="text" style="display: none;" name="productqtyOld" id="productqtyOld" /> 
       <input type="text" style="display: none;" name="productid" id="productid" />
       <input type="text" style="display: none;" name="unitprice" id="unitprice" />
       <br /><br>
       <input type="submit" class="btnn" value="save" name="add" id="btn" disabled />
       <input type="reset" class="btn" value="reset" />
     </form> 
   
   </div>
 </div>




 <?php

 $select = mysqli_query($conn, "select * from order_master inner join product_master on order_master.productid=product_master.productid;");

 ?>
 <div class="product-display">
  <h1 align="center">List of Orders</h1>
  <center>
  <table>
   <thead>
     <tr>
      <th>Order Id</th>
      <th>Product Name</th>
      <th>Order Date</th>
      <th>Order Qty</th>
      <th>Unit Price</th>
      <th>Order Value</th>
      <th>Action</th>

    </tr>
  </thead>
  <?php while($row = @mysqli_fetch_assoc($select)){ ?>
   <tr>
     <td><?php echo $row['orderid']; ?></td>
     <td><?php echo $row['name']; ?></td>
     <td><?php echo $row['orderdate']; ?></td>
     <td><?php echo $row['orderqty']; ?></td>
     <td><?php echo $row['unitprice']; ?></td>
     <td><?php echo $row['orderqty'] * $row['unitprice']?></td>


     <td>
       <button><a href="action.php?edit=<?php echo $row['orderid']; ?>" class="btn">  Edit </a></button>

       <button><a href="index.php?delete=<?php echo $row['orderid']; ?>" class="btn">  Delete </a></button>
     </td>
   </tr>
 <?php } ?>

</table>
</center>
</div>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>

<script src="main.js"></script>
</body>
</html>





@$productid=$_REQUEST['productid']; 
@$orderqty=$_REQUEST['orderqty'];
@$ordervalue=$_REQUEST['ordervalue'];
@$orderdate=$_REQUEST['orderdate'];