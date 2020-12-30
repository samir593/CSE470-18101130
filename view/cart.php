<?php 

    $active='Cart';
    include("includes/header.php");

?>
<div id="hot">
 <div class="container">
<div class="col-md-9">
     <div class="box">
    <h1>Shopping Cart <i class="fa fa-shopping-cart"></i></h1>
    </div>
     </div>
</div>  
    </div>
&nbsp;

  <div id="content">
           
   <div class="container">
                  
    <div id="cart" class="col-md-9">
                          
     <div class="box">
                   
      <form action="cart.php" method="post" enctype="multipart/form-data">
                       
                          
             <?php 
                     
             $ip_add = getRealIpUser();
                        
             $select_cart = "select * from cart where ip_add='$ip_add'";
                       
             $run_cart = mysqli_query($con,$select_cart);
                       
             $count = mysqli_num_rows($run_cart);
                       
               ?>
                              
               <div class="table-responsive">
                           
               <table class="table">
                               
               <thead>               
               <tr>                        
               <th colspan="2">Product</th>
               <th>Quantity</th>
               <th>Unit Price</th>
               <th colspan="1">Delete</th>
               <th colspan="2">Sub-Total</th>                           
               </tr>                           
               </thead>
                               
               <tbody>
                                  
                <?php 
                                   
                $total = 0;
                            
                while($row_cart = mysqli_fetch_array($run_cart)){
                                       
                  $pro_id = $row_cart['p_id'];
                                       
                  $pro_qty = $row_cart['qty'];
                                       
                  $get_products = "select * from products where product_id='$pro_id'";
                                       
                  $run_products = mysqli_query($con,$get_products);
                                       
                   while($row_products = mysqli_fetch_array($run_products)){
                                           
                      $product_title = $row_products['product_title'];
                                           
                      $product_img = $row_products['product_img'];
                                           
                      $only_price = $row_products['product_price'];
                           
                      $sub_total = $row_products['product_price']*$pro_qty;
                                           
                      $total += $sub_total;
                                           
                             ?>
                                   
                     <tr>                   
                 <td>
                                           
                 <img class="img-responsive" src="admin_area/product_images/<?php echo $product_img; ?>" alt="Product 3a">
                                           
             </td>
                                       
              <td>
                                           
       <a href="details.php?pro_id=<?php echo $pro_id; ?>"> <?php echo $product_title; ?> </a>
                                           
        </td>
                                       
         <td>
                                          
             <?php echo $pro_qty; ?>
                                           
    </td>
                                       
        <td>
                                           
         <?php echo $only_price; ?> Tk
                                           
       </td>
                                                                      
         <td>
                                           
            <input type="checkbox" name="remove[]" value="<?php echo $pro_id; ?>">
                                           
       </td>
                                       
         <td>
                                           
          <?php echo $sub_total; ?>TK
                                           
       </td>
                                       
      </tr>
                                   
      <?php } 
    
                } ?>
                                   
     </tbody>
                               
    <tfoot>
                                   
         <tr>
                                       
           <th colspan="5">Total</th>
           <th colspan="2"><?php echo $total; ?>TK</th>
                                       
        </tr>
                                   
       </tfoot>
                               
       </table>
                           
        </div>
                       
            <div class="box-footer">
                           
             <div class="pull-left">
                               
              <a href="shop.php" class="btn btn-default">
                                   
                <i class="fa fa-chevron-left"></i> Continue Shopping
                                   
            </a>
                               
         </div>
                           
          <div class="pull-right">
                               
         <button type="submit" name="update" value="Update Cart" class="btn btn-default">
                                   
          <i class="fa fa-refresh"></i> Update Cart
                                   
         </button>
                               
         <a href="checkout.php" class="btn btn-primary">
                                   
         Proceed Checkout <i class="fa fa-chevron-right"></i>
                                   
             </a>
                               
           </div>
                           
          </div>
                       
        </form>
                   
        </div>
               
         <?php 
               
            function update_cart(){
                    
                global $con;
                    
                if(isset($_POST['update'])){
                        
                  foreach($_POST['remove'] as $remove_id){
                            
                    $delete_product = "delete from cart where p_id='$remove_id'";
                            
                    $run_delete = mysqli_query($con,$delete_product);
                            
                    if($run_delete){
                                
                      echo "<script>window.open('cart.php','_self')</script>";
                                
                            }
                            
                        }
                        
                    }
                    
                }
               
               echo @$up_cart = update_cart();
               
               ?>
           </div>  
       </div>
   </div>
   
   <?php 
    
    include("includes/footer.php");
    
    ?>
    
    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>
    
    
