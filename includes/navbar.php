
  <nav class="navbar navbar-expand-lg">
        <div class="container">
             <a class="navbar-brand" href="index.php">
                 <span>Elite</span> <span>Corp</span>
             </a>
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
             </button>

      <!-- Collect the nav links, forms, and other content for toggling -->

      <div class="collapse navbar-collapse" id="main-nav">
                 <ul class="navbar-nav ml-auto">
                     <li class="nav-item active">
                     <a class="nav-link" href="index.php">HOME <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item">
                     <a class="nav-link" href="#">ABOUT US</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="#">CONTACT US</a>
                     </li>

                    <li class="nav-item dropdown">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">CATEGORY<span class="caret"></span></a>

                        <div class="dropdown-menu" aria-labellebdy="navbarDropdown">
                          <?php

                            $conn = $pdo->open();
                            try{
                              $stmt = $conn->prepare("SELECT * FROM category");
                              $stmt->execute();
                              foreach($stmt as $row){
                                echo "
                                  <a class='dropdown-item' href='category.php?category=".$row['cat_slug']."'>".$row['name']."</a>
                                ";
                              }
                            }
                            catch(PDOException $e){
                              echo "There is some problem in connection: " . $e->getMessage();
                            }

                            $pdo->close();

                          ?>
                        </div>
                    </li>
                  </ul>
              </div>
        <form method="POST" class="navbar-form navbar-left" action="search.php">
          <div class="input-group">
              <input type="text" class="form-control" id="navbar-search-input" name="keyword" placeholder="Search for Product" required>
              <span class="input-group-btn" id="searchBtn" style="display:none;">
                  <button type="submit" class="btn btn-default btn-flat"><i class="fa fa-search"></i> </button>
              </span>
          </div>
        </form>
      </div>
      <!-- /.navbar-collapse -->
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu text-center">
        <ul class="nav navbar-nav">
          <li class="dropdown messages-menu">
            <!-- Menu toggle button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-shopping-cart"></i>
              <span class="label label-success cart_count"></span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have <span class="cart_count"></span> item(s) in cart</li>
              <li>
                <ul class="menu" id="cart_menu">
                </ul>
              </li>
              <li class="footer"><a href="cart_view.php">Go to Cart</a></li>
            </ul>
          </li>
          <?php
            if(isset($_SESSION['user'])){
              $image = (!empty($user['photo'])) ? 'images/'.$user['photo'] : 'images/profile.jpg';
              echo '
                <li class="dropdown user user-menu">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="'.$image.'" class="user-image" alt="User Image">
                    <span class="hidden-xs">'.$user['firstname'].' '.$user['lastname'].'</span>
                  </a>
                  <ul class="dropdown-menu">
                    <!-- User image -->
                    <li class="user-header">
                      <img src="'.$image.'" class="img-circle" alt="User Image">

                      <p>
                        '.$user['firstname'].' '.$user['lastname'].'
                        <small>Member since '.date('M. Y', strtotime($user['created_on'])).'</small>
                      </p>
                    </li>
                    <li class="user-footer">
                      <div class="pull-left">
                        <a href="profile.php" class="btn btn-default btn-flat">Profile</a>
                      </div>
                      <div class="pull-right">
                        <a href="logout.php" class="btn btn-default btn-flat">Sign out</a>
                      </div>
                    </li>
                  </ul>
                </li>
              ';
            }
            else{
              echo "
              <span><a href='login.php'>LOGIN</a></span>
              <span><a href='signup.php'>SIGNUP</a></span>
              ";
            }
          ?>
        </ul>
      </div>
    </div>
  </nav>
