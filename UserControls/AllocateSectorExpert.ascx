<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AllocateSectorExpert.ascx.cs" Inherits="SIAS.UserControls.AllocateSectorExpert" %>


<div class="modal fade" id="AllocateSectorExpert" tabindex="-1" role="dialog" aria-labelledby="myAllocateSectorExpertLabel">  
<div class="modal-dialog modal-lg" role="document" style="width: 90%;">  
<div class="modal-content">  

<div class="modal-body" >
    
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>  
<h4 class="modal-title" id="myAllocateSectorExpertLabel">Allocate   Sector  
[<label style="color: red;" id="AllocateSector_Id">0</label>]    
<label style="color: red;" id="AllocateAssessmentMessgae" />  
    </h4> 
<div class="row">
<p> Please Select Sector expert for the selected  Assessment</p>
</div>
<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Name: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12">
                      <div id="Allocate_SectorDiv">Lookup</div>
  </div> 
</div>
<script type="text/javascript"></script>  
  <div class="ln_solid"></div>    
   <div class="row">  
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">  
       <label  data-dismiss="modal" aria-label="Close"  class="btn btn-primary">Cancel</label>  
     <label  onclick="AllocateSector()"  class ="btn btn-success">Submit</label>  
 </div>  
 </div>   
</div>  
</div></div></div>  
<script> 
    $(document).ready(function () {

        GetAllSectorExperts('Allocate_SectorDiv');
    });

    function AllocateSector()
    {


         var pathArray = window.location.pathname.split('/');
                var fType = pathArray[pathArray.length - 1];
        SaveAllocateSectorExperts(fType, document.getElementById('Allocate_SectorId').value)


      
    }

</script>


