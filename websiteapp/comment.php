<?php
session_start();

$koneksi = mysqli_connect("localhost", "root", "", "websitekuu");

if (mysqli_connect_errno()) { // cek kondisi jika koneksi berhasil
    echo "Koneksi database gagal : " . mysqli_connect_error();
} else {
    echo "Koneksi berhasil";
}
echo "<br>";
$cm = $_POST['comment'];


$save = mysqli_query($koneksi, "insert into products (comment) values ('$cm')");
if ($save) {
    echo "Data berhasil disimpan!";
} else {
    echo "Data gagal disimpan!";
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Comic+Neue:wght@700&family=Roboto+Slab&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.2/css/all.css" />
    <!-- custom css file link  -->
    <link rel="stylesheet" href="reviewcontinue.css">
</head>

<body>

    <header id="navbar">

        <input type="checkbox" name="" id="toggler">
        <label for="toggler" class="fas fa-bars"></label>
        <img src="images/logo.png" alt="" width="50px" height="50px">
        <a href="#" class="logo">Show Your Skin<span>.</span></a>

        <nav class="navbar">
            <a href="home.php">home</a>
            <a href="about.html">about</a>
            <a href="product.php">products</a>
            <a href="review.html">review</a>
            <a href="contact.php">contact</a>
        </nav>

        <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="cartshop.php" class="fas fa-shopping-cart"></a>
            <a href="login.php" class="fas fa-user"></a>
        </div>

    </header>

    <section class="review" id="review">

        <h1 class="heading"> Apa yang mereka katakan tentang <span>SYS</span></h1><br><br><br>
        <br>
        <br>
        <h1 align="center">Sebelum anda membeli, lihat apa yang mereka sukai tentang produk kami.<h1><br>

                <div class="review">
                    <a href="#" class="kotak1">
                        <i class="panah kiri"></i>
                    </a>
                    <a href="#" class="btn">Read Reviews</a>
                    <a href="reviewcontinue.html" class="kotak2">
                        <i class="panah kanan"></i>
                    </a>
                </div>

                <div class="box-container">

                    <div class="box">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="txt2">
                            <h2 align="center">Booster Serum </h2>
                        </div>
                        <div class="txt">
                            <p align="center">Pertama kali nyoba serum ini karena merasa belakangan ini kulitku lagi kusam, teksturnya lumayan kental dan tidak membutuhkan waktu lama untuk menyerap, wanginya lumayan tercium tapi tidak mengganggu. Menurut aku cepet banget kempesin jerawat, ga ada beruntusan sama sekali.</p>
                        </div>
                        <div class="user">
                            <img src="images/photo12.jpg" alt="">
                            <div class="user-info">
                                <h3>Luchi</h3>
                                <div class="garis">
                                    <hr width="100%" size="2">
                                </div>
                            </div>
                        </div>
                        <div class="comment">
                            <a href="#" class="fas fa-comment"></a>
                            <div class="teks">
                                <table>
                                    <tr>
                                        <td colspan="5">
                                            <p>Comment : </p><br>
                                        <td><?php echo $cm; ?></td>
                                        </td>
                                    </tr>
                                </table>
                            </div>

                        </div>
                    </div>

                    <div class="box">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="txt2">
                            <h2 align="center">Hydrating Toner</h2>
                        </div>
                        <div class="txt">
                            <p align="center">Ini recommended banget buat yang kulitnya kombinasi/berminyak apalagi punya jerawat dan beruntusan, di kulitku yang kombinasi dia ngelembapin tapi gak over jadi lembabnya pas dan gak bikin muka aku makin berminyak, teksturnya juga enak super cair.</p>
                        </div>
                        <div class="user">
                            <img src="images/p13.jpg" alt="">
                            <div class="user-info">
                                <h3>Jane</h3>
                                <div class="garis">
                                    <hr width="100%" size="2">
                                </div>
                            </div>
                        </div>
                        <div class="comment">
                            <a href="#" class="fas fa-comment"></a>
                            <div class="teks">
                                <form action="comment.php" method="POST">
                                    <table>
                                        <tr>
                                            <td colspan="5">
                                                <p>Comment : <input type="text" nsme="comment"> </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <br><input type="Submit" name="submit" value=" Send ">
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>

                        </div>

                    </div>

                    <div class="box">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>


                        <div class="txt2">
                            <h2 align="center">Facial Wash</h2>
                        </div>
                        <div class="txt">
                            <p align="center">Facial wash yang bertekstur gel bening, tidak berbau, tidak ber alkohol dan cocok dikulitku yang sensitive ini. Waktu dipake facial wash ini cenderung tidak banyak mengeluarkan busa dan prmakaian rutin bisa bikin kulitku lembab dan halus.</p>
                        </div>
                        <div class="user">
                            <img src="images/img1222.png" alt="">
                            <div class="user-info">
                                <h3>Tania</h3>
                                <div class="garis">
                                    <hr width="100%" size="2">
                                </div>
                            </div>
                        </div>
                        <div class="comment">
                            <a href="#" class="fas fa-comment"></a>
                            <div class="teks">
                                <form action="comment.php" method="POST">
                                    <table>
                                        <tr>
                                            <td colspan="5">
                                                <p>Comment : <input type="text" nsme="comment"></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <br><input type="Submit" name="submit" value=" Send ">
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>

                        </div>
                    </div>



                </div>
    </section>


</body>

</html>