<!DOCTYPE html>
<html lang="en">
  <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
  }
  
  header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 50px;
  }
  
  header .navbar {
    display: flex;
    align-items: center;
    justify-content: space-between;
    max-width: 1200px;
    margin: 0 auto;
  }
  
  .navbar .logo {
    color: #fff;
    font-weight: 600;
    font-size: 2.1rem;
    text-decoration: none;
  }
  
  .navbar .logo span {
    color: #C06B3E;
  }
  
  .navbar .menu-links {
    display: flex;
    list-style: none;
    gap: 45px;
  }
  
  .navbar a {
    color: #ffffff;
    text-decoration: none;
    transition: 0.2s ease;
  }
  
  .navbar a:hover {
    color: #C06B3E;
  }
  
  .greeting {
    height: 100vh;
    background-image: url("images/img/orig.jpg");
    background-position: center;
    background-size: cover;
    display: flex;
    align-items: center;
    padding: 0 20px;
  }
  
  .greeting .content {
    max-width: 1200px;
    margin: 0 auto;
    width: 100%;
    color:#ffffff;
  }
  
  .greeting .content h2 {
    font-size: 3rem;
    max-width: 600px;
    line-height: 70px;
  }
  
  .greeting .content p {
    font-weight: 300;
    max-width: 600px;
    margin-top: 15px;
  }
  
  .greeting .content button {
    background: #ffffff;
    padding: 12px 30px;
    border: none;
    font-size: 1rem;
    border-radius: 6px;
    margin-top: 40px;
    cursor: pointer;
    font-weight: 500;
    transition: 0.2s ease;
  }
  
  .greeting .content button:hover {
    color: #ffffff;
    background: #000000;
  }
  
  #close-menu-btn {
    position: absolute;
    right: 20px;
    top: 20px;
    cursor: pointer;
    display: none;
  }
  
  #hamburger-btn {
    color: #fff;
    cursor: pointer;
    display: none;
  }
  
  @media (max-width: 768px) {
    header {
      padding: 10px;
    }
  
    header.show-mobile-menu::before {
      content: "";
      position: fixed;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      backdrop-filter: blur(5px);
    }
  
    .navbar .logo {
      font-size: 1.7rem;
    }
  
      
    #hamburger-btn, #close-menu-btn {
      display: block;
    }
  
    .navbar .menu-links {
      position: fixed;
      top: 0;
      left: -250px;
      width: 250px;
      height: 100vh;
      background: #fff;
      flex-direction: column;
      padding: 70px 40px 0;
      transition: left 0.2s ease;
    }
  
    header.show-mobile-menu .navbar .menu-links {
      left: 0;
    }
  
    .navbar a {
      color: #fff;
    }
  
    .greeting .content {
      text-align: center;
    }
  
    .greeting .content :is(h2, p) {
      max-width: 100%;
    }
  
    .greeting .content h2 {
      font-size: 2.3rem;
      line-height: 60px;
    }
    
    .greeting.content button {
      padding: 9px 18px;
    }
  }
  </style>

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kkopi.Tea</title>
    <link rel="shortcut icon" type="image/x-icon" href="logo.ico"/>
    
  </head>
  <body>
    <header>
      <nav class="navbar">
        <a class="logo" href="index.php">Kkopi.Tea<span>.</span></a>
        <ul class="menu-links">
          <span id="close-menu-btn" class="material-symbols-outlined">close</span>
          <li><a href="indexs.php">Home</a></li>
          <li><a href="about.php">About Us</a></li>
          <li><a href="registration.php">Register</a></li>
        </ul>
        <span id="hamburger-btn" class="material-symbols-outlined">menu</span>
      </nav>
    </header>

    <section class="greeting">
      <div class="content">
        <h2>About Us</h2>
        <p>
        Kkopi.Tea is all set and ready to become the country’s leading franchise in the beverage industry, equipped with the highest quality ingredients and products for food service businesses. Be it in milk tea or in coffee. Kkopi.Tea offers only the safest, most consistent, and most economical products for every consumer.
        With hundreds of outlets nationwide, the brand has maximum availability and accessibility.
        </p><br>
        <p>
        Truly, Kkopi.Tea is a brand for all aspiring entrepreneurs. This is where accessibility, availability, and affordability meet in one place.
        </p>
        <a href="your_orders.php">
        <button>Order Now</button>
        </a>
      </div>
    </section>

    <script>
      const header = document.querySelector("header");
      const hamburgerBtn = document.querySelector("#hamburger-btn");
      const closeMenuBtn = document.querySelector("#close-menu-btn");

      // Toggle mobile menu on hamburger button click
      hamburgerBtn.addEventListener("click", () => header.classList.toggle("show-mobile-menu"));

      // Close mobile menu on close button click
      closeMenuBtn.addEventListener("click", () => hamburgerBtn.click());
    </script>
    
  </body>
</html>