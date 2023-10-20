<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Spin Wheel App</title>
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@500;600&display=swap"
      rel="stylesheet"
    />
    <!-- Stylesheet -->
    <link rel="stylesheet" href="spin.css" />
  </head>
  <body>
   
    <div class="wrapper">
      <div class="conditions">
        <h2>Terms & conditions applied <a style="font-size: 1rem;" href="terms.html">Read Now</a></h2>
      </div>
      <div class="container">
        <canvas id="wheel"></canvas>
        <button id="spin-btn">Spin</button>
        <img src="https://www.fairfx.com/static/images/icons/lessrisk.png" alt="spinner-arrow" />
      </div>
      <div id="final-value">
        <p>Click On The Spin Button To Start</p>
      </div>
    </div>
    <!-- Chart JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <!-- Chart JS Plugin for displaying text over chart -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chartjs-plugin-datalabels/2.1.0/chartjs-plugin-datalabels.min.js"></script>
    <!-- Script -->
    <script src="spin.js"></script>
    <script>
      alter("CLIME NOW");
      // if(alter){
      //   console.log(spin.html)
      // }
      // else{
      //   console.log("You are not alligible")
      // }
    </script>
  </body>
</html>