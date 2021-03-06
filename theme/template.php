<!DOCTYPE html> 
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title><?php echo $title; ?></title>
  <!-- Bootstrap core CSS-->
  <link href="<?php echo WEB_ROOT; ?>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="<?php echo WEB_ROOT; ?>vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   <!--- Page level plugin CSS-->
  <link href="<?php echo WEB_ROOT; ?>vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="<?php echo WEB_ROOT; ?>css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
 <?php require_once("nav.php") ; ?> 
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Dashboard</a>
        </li>
        <li class="breadcrumb-item active"><?php echo $title; ?></li>
      </ol>
      <div class="row">
        <div class="col-12">
              <?php   check_message();  ?>  
             <?php require_once $content; ?> 
        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Kellz Corp 2021</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="<?php echo WEB_ROOT; ?>/logout.php">Logout</a>
          </div>
        </div>
      </div>
    </div>
  
    <!-- Bootstrap core JavaScript-->
    <script src="<?php echo WEB_ROOT; ?>vendor/jquery/jquery.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="<?php echo WEB_ROOT; ?>vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="<?php echo WEB_ROOT; ?>js/sb-admin.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>vendor/datatables/jquery.dataTables.js"></script>
    <script src="<?php echo WEB_ROOT; ?>vendor/datatables/dataTables.bootstrap4.js"></script>
    <script src="<?php echo WEB_ROOT; ?>vendor/chart.js/Chart.min.js"></script>
     <!-- Custom scripts for this page-->
    <script src="<?php echo WEB_ROOT; ?>js/sb-admin-datatables.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>js/sb-admin-charts.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>js/canvasjs.min.js"></script>

<script type="text/javascript">
  $(document).on('click', '.delete', function(){
  var id = $(this).attr("id");
  if(confirm("Are you sure you want to delete this record?"))
  {

  }
  else
  {
   return false; 
  }
 });
</script>
<script type="text/javascript">
$(document).ready(function(){
 $('.action').change(function(){
  if($(this).val() != '')
  {
   var action = $(this).attr("id");
   var query = $(this).val();
   var result = '';
   if(action == "city")
   {
    result = 'brgy';
   }
   else
   {
    result = 'city';
   }

   $.ajax({
    url: "<?php echo WEB_ROOT; ?>module/student/fetchcity.php",
    method:"POST",
    data:{action:action, query:query},
    success:function(data){
     $('#'+result).html(data);
    }
   })
  }
 });
});


</script>


   <script type="text/javascript" language="javascript">
      $(document).ready(function(){
          $('#addNewExpenses').click(function(){
            $('#expform')[0].reset();
            $('#action').val('Add');
            $('#operation').val('Add');
          });

     

          var dataTable = $('#expenselist').DataTable({
            "processing":false,
            "serverSide":false,
            "order":[],
            "ajax":{
                url: "<?php echo WEB_ROOT; ?>module/project/controller.php?action=loadexp",
                type:"POST"
            },
            "columnDefs":[
                {
                  "targets":[0, 3, 4],
                  "orderable":false
                }
            ],
          });
          

          var dtexpSum = $('#expsummary').DataTable({
            "processing":false,
            "serverSide":false,
            "order":[],
            "ajax":{
                url: "<?php echo WEB_ROOT; ?>module/project/controller.php?action=loadexpSum",
                type:"POST"
            },
            "columnDefs":[
                {
                  "targets":0,
                  "orderable":false
                }
            ],
          });

          

          $('#expform').submit(function(e){
            e.preventDefault();
              $.ajax({
              url: "<?php echo WEB_ROOT; ?>module/project/controller.php?action=addexpenses",
              type: "POST",
              data: $(this).serialize(),
              dataType: 'html',
                success: function(data)
                {
                

                   $('#expform')[0].reset();
                   $('#addexpenses').modal('hide');
                  dataTable.ajax.reload();
                  dtexpSum.ajax.reload();
                 // alert('New Expenses addedd Successfully!');
                },
                error: function()
                {
                 alert('Failed!');
                }
              })
            });


      });     



   </script>
  
<script type="text/javascript" language="javascript">
        $(document).ready(function() {
    var table = $('#dataTable').DataTable();
     
    $('#dataTable tbody')
        .on( 'mouseenter', 'td', function () {
            var colIdx = table.cell(this).index().column;
 
            $( table.cells().nodes() ).removeClass( 'highlight' );
            $( table.column( colIdx ).nodes() ).addClass( 'highlight' );
        } );
} );
      </script>
  </div>
</body>

</html>
