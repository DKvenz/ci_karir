  <!-- Content Header (Page header) -->
  <section class="content-header">
  	<h2>
    DATA 
    <small><strong>PENGUMUMAN</strong></small>
  </h2>
  	<!-- <ol class="breadcrumb">
  		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
  		<li><a href="#">Lowongan Kerja</a></li>
  		<li class="active">Daftar Pengumuman </li>
  	</ol> -->
  </section>

  <!-- Main content -->
  <section class="content">
  	<div class="row animated fadeInLeft">
  		<div class="col-md-12">
  			<div class="box" style="border-top: 0px solid #d2d6de; border-left: 0px solid #d2d6de; border-right: 0px solid #d2d6de; border-bottom: 0px solid #d2d6de; ">
  				<div class="box-header">
  				</div>
  				<div class="box-body p">
  					
  					<table id="sample_1" class="table table-striped table-bordered table-hover">
  						<thead>
  							<tr>
  								<th>No.</th>
  								<th>Nama Perusahaan</th>
                  <th>Nama Lowongan</th>
  								<th>Nama Pengumuman</th>
  							</tr>
  						</thead>
  						<tbody>
  							<?php  
  							$no =1;
  							foreach ($daftar as $key) {
  								?>
  								<tr>
  									<td><?= $no ?>.</td>
  									<td><?= $key['nm_perusahaan'] ?></td>
  									<td><a style="color:blue" target="_blank" title="Lihat Lowongan" href="<?=  site_url('lowongan/detail_loker/'.$key['id_lowongan']) ?>"><?= $key['nm_lowongan'] ?></a></td>
  									<td>
										 <a style="color:blue" target="_blank" title="Lihat Pengumuman" href="<?=  site_url('Pengumuman/detail_pengumuman/'.$key['id_pengumuman']) ?>"><?= $key['nm_pengumuman'] ?></a>
										  </td>
  									</tr>
  									<?php $no++; } ?>
  								</tbody>  	
  								<tfoot>
  									<tr>
  										<th>No.</th>
  										<th>Nama Perusahaan</th>
  										<th>Nama Lowongan</th>
  										<th>Nama Pengumuman</th>
  									</tr>
  								</tfoot>					
  							</table>
  						
  					</div>
  				</div>
  			</div>
  		</section>