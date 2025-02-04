<?php
session_start();
require("../config.php");
require '../lib/session_user.php';	
require '../lib/session_login.php';
require("../lib/header.php");
?> 
			<div class="row">
                        <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="m-t-0 text-uppercase text-center header-title"><i class="ti-wallet text-primary"></i> QRIS - MANUAL</h4><hr>
                                <img src="<?php echo $config['web']['url'] ?>assets/images/qris.jpg" alt="DEPOSIT-MANUAL VIA QRIS" class="card-img-top"></img>
                                <div class="card-body">
                                <center><b>Scan Qris Diatas Untuk Pembayaran</b></center><br/>
				<div class="mb-3" id="accordion">
				<div class="card mb-1">
			   <!-- KE 1 -->  
				<div class="card-header" id="headingOne">
				<h4 class="m-0">
				<a class="text-dark collapsed" data-toggle="collapse" href="#collapseOne" aria-expanded="true">
				<i class="mdi mdi-help-circle mr-1 text-primary"></i>Cara Deposite Merchant
				</a>
				</h4>
				</div>
				<div id="collapseOne" class="card-collapse collapse in" role="tabcard" aria-labelledby="headingOne">
				<div class="card-body">
					<ul>
			                <li>Scan Kode QR Diatas Pastikan Sesuai Nama Merchant <b> -</b>.</li><br />
                                        <li>Isi Nominal Deposit Saldo.</li><br />
                                        <li>Selesaikan Pembayaran Deposit Saldo.</li><br />
                                        <li>Jika Anda Sudah Melakukan Pembayaran Diatas Dilahkan Kirim Bukti Pembayaran Ke Kontak Admin Dan Jangan Lupa Infokan Username Anda Kepada Admin<b><a href="../halaman/kontak-kami"><br>Konfirmasi Deposite </a></b></li><br />
            				
            				<ul>
        			</div>
        			</div>
        		        </div>        		        
        		    <!-- KE 2 -->  
        		        <div class="card mb-1">
		                <div class="card-header" id="headingTwo">
				<h4 class="m-0">
				<a class="text-dark collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="true">
				<i class="mdi mdi-help-circle mr-1 text-primary"></i>Cara Deposite Manual
				</a>
			        </h4>
				</div>
				<div id="collapseTwo" class="card-collapse collapse" role="tabcard" aria-labelledby="headingTwo">
				<div class="card-body">
					<ul>
       		                        <li><b class="text-dark">Alfamart / Indomart </b><br>Silahkan Minta Bantuan Kasir Untuk Topup Saldo <b>Dana / Go-pay</b> Dengan Nomor Di Bawah Ini.</li><br />  		        
        	                  	<li><b class="text-dark">Link Aja</b><br>082119800783<br>Agustino Trio Anggoro</li><br />
        		                <li><b class="text-dark">GO-PAY</b><br>082119800783<br>Afiya Kharisma</li><br />
        		                <li><b class="text-dark">DANA</b><br>082119800783<br>Agustino Trio Anggoro</li><br />
        		                <li><b class="text-dark">OVO</b><br>082119800783<br>Dinda Rahmawati</li><br />
        		                <li>Jika Anda Sudah Melakukan Pembayaran Diatas Dilahkan Kirim Bukti Pembayaran Ke Kontak Admin Dan Jangan Lupa Infokan Username Anda Kepada Admin<b><a href="../halaman/kontak-kami"><br>Konfirmasi Deposite </a></b></li>
        		                </ul>
				</div>
				</div>
				</div>			   
			   <!-- DONE -->
			   
        	                </div>
                                </div>
                             </div>
                         </div>
                        </div>  
                        </div>
                        </div>
<?php
require '../lib/footer.php';
?>

