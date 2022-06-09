  <!-- Content Header (Page header) -->
  <section class="content-header" style="margin-top: -20px">
    <h2>
      DATA PERHITUNGAN
      <small><strong>SPK</strong></small>
    </h2>
   
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row animated fadeInLeft">
      <div class="col-md-12">
        <div class="box" style="border-top: 0px solid #d2d6de; border-left: 0px solid #d2d6de; border-right: 0px solid #d2d6de; border-bottom: 0px solid #d2d6de; ">
          <div class="box-body p">
            <a class="btn btn-sm btn-primary" href="<?= site_url('admin/perhitungan') ?>">Kembali</a>
            <table id="sample_1" class="table table-striped table-bordered table-hover">

              <thead>
                <tr>
                  <th>No.</th>
                  <th>NIM</th>
                  <th>Nilai Hasil </th>
                  <th>Tindakan</th>
                </tr>
              </thead>
              <tbody>

              <?php 
                $no = 1;
                foreach ($hasil as $key) {
              ?>
                <tr>
                  <td><?= $no; ?>.</td>
                  <td><?= $key['0']; ?></td>
                  <td><?= $key['1']; ?></td>
                  <td>
                    <a href="#" onclick="detail(<?= $key['0']?>)" class="btn btn-sm btn-info"> Detail</a>
                  </td>
                </tr>
              <?php 
                $no++;
               } 
              ?>

             </tbody>
             <tfoot>
              <tr>
               <th>No.</th>
               <th>NIM</th>
               <th>Nilai Hasil</th>
               <th>Tindakan</th>
             </tr>
           </tfoot>
         </table>
         <br>

       </div>
       <!-- /.box-body -->
     </div>
     <!-- /.box -->
   </div>
   <!-- /.col -->

 </div>

 <!-- /.row -->
</section>
<!-- /.content -->
<div class="modal bs-modal-lg animated fadeInDown" id="modal-pelamar" tabindex="-1" role="dialog" aria-hidden="true" >
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title float-left">DETAIL DATA PELAMAR</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
      </div>
      <div class="modal-body">  
        <div class="container">
          <div class="row">
            <div class="col-md-12"  id="dtpelamar">
                
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer" style="clear:both;">
        <div class="float-right">
          <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal">Tutup</button>
        </div>
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<div class="modal bs-modal-lg animated fadeInDown" id="modal-berkas" tabindex="-1" role="dialog" aria-hidden="true" >
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title float-left">DETAIL DATA BERKAS PELAMAR</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
      </div>
      <div class="modal-body">  
        <div class="container">
          <div class="row">
            <div class="col-md-12"  id="dtberkas">
                
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer" style="clear:both;">
        <div class="float-right">
          <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal">Tutup</button>
        </div>
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>

  <script>
      function detail(id) {
          var url = "<?= site_url('admin/perhitungan/detail') ?>/"+id;
          $.ajax({
              url : url,
              success : function (res) {
                  $("#dtpelamar").html(res);
                  $("#modal-pelamar").modal('show');
              },
              error : function()
              {
                  console.log('gagal load');
              }
          })
      }

      function berkas(nim) {
          var url = "<?= site_url('admin/perhitungan/getBerkas') ?>/"+nim;
          $.ajax({
              url : url,
              success : function (res) {
                  $("#dtberkas").html(res);
                  $("#modal-berkas").modal('show');
              },
              error : function()
              {
                  console.log('gagal load');
              }
          })
      }
  </script>