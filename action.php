<?php

@include 'config.php';

@$orderid = $_GET['edit'];

if(isset($_POST['update_product'])){

   $productid = $_POST['productid'];
   $orderdate = $_POST['orderdate'];
   $orderqty = $_POST['orderqty'];
 

   if(empty($productid) || empty($orderdate) || empty($orderqty)){
      $message[] = 'please fill out all!';    
   }else{

      $update_data = "UPDATE order_master SET  orderdate='$orderdate', orderqty='$orderqty'  WHERE  orderid = '$orderid'";
      $upload = mysqli_query($conn, $update_data);

      if($upload){
         header('location:index.php');
      }else{
         $$message[] = 'please fill out all!'; 
      }

   }
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <link rel="stylesheet" href="style.css">
</head>
<body>

<?php
   if(isset($message)){
      foreach($message as $message){
         echo '<span class="message">'.$message.'</span>';
      }
   }
?>

<div class="container">
<div class="admin-product-form-container centered">
   <?php
      $select = mysqli_query($conn, "select * from order_master inner join product_master on order_master.productid=product_master.productid where orderid='$orderid';");
      while($row = mysqli_fetch_assoc($select)){

   ?>
 
 <h1 class="title">Update The Product</h1>  
   <form action="" method="post"  >
      

      Order ID :<input type="text" readonly class="box" name="productid" id="productid" value="<?php echo $row['productid']; ?>" placeholder="enter the product name">
      <br>
      Product Name :<input type="text" readonly class="box" name="name" id="name" value="<?php echo $row['name']; ?>" placeholder="enter the product name">
      <br>
      Product Unit Price :<input type="text" readonly class="box" name="unitprice" id="unitprice" value="<?php echo $row['unitprice']; ?>" placeholder="enter the product name">
      <br>
      Order Date :<input type="date"  class="box" name="orderdate" id="orderdate" value="<?php echo $row['orderdate']; ?>" placeholder="enter the product price">
      <br>
      Order quantity :<input type="number" min="0" class="box" name="orderqty" id="orderqty" value="<?php echo $row['orderqty']; ?>" placeholder="enter the product price">
  
      <br><br>
      <input type="submit" value="update" name="update_product" class="btnn">
      <button><a href="index.php" class="btn">Return</a></button>
   </form>
 


   <?php }; ?>

   

</div>

</div>

</body>
</html>