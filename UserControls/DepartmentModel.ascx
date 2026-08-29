<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DepartmentModel.ascx.cs" Inherits="SIAS.UserControls.DepartmentModel" %>
<div class="modal fade" id="DepartmentModals" tabindex="-1" role="dialog" aria-labelledby="myDepartmentModalLabel">  
<div class="modal-dialog modal-lg" role="document" style="width: 90%;">  
<div class="modal-content">  
<div class="modal-header">  
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>  
<h4 class="modal-title" id="myDepartmentModalLabel">DepartmentUsers  
<%--[<label style="color: red;" id="AspNetUsers_Id">0</label> ]  --%>  
<label style="color: red;" id="AspNetUsersStatusUpdateMessgae" />   
</h4>  
</div>  
<div class="modal-body" >  
<script type="text/javascript"></script>  




                <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12 required" for="first-name">Province : </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><div id="AspNetUsers_ProvinceDiv"  ></div> </div> 
</div>

       <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Sector : </label>   
  <div id="AspNetUsers_SectorDiv"  class="col-md-4 col-sm-4 col-xs-12"></div> 
</div>  

                     
   <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Department : </label>   
  <div id="AspNetUsers_DepartmentDiv"  class="col-md-4 col-sm-4 col-xs-12"></div> 
</div>  



<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Number of Department Users: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"   enabled="true"     placeholder="Enter Number"     id="DepartmentsView_User"  /> </div> 
</div>
    

   <div class="row">  
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">  
       <label  data-dismiss="modal" aria-label="Close"  class="btn btn-primary">Cancel</label>  
     <label  onclick="SaveDepartmentsView()"  class="btn btn-success">Submit</label>  
 </div>  
 </div>   
</div>  
</div></div>
<script  type="text/javascript"> 
    $(document).ready(function () {


        GetSectorLookUp("AspNetUsers_SectorDiv");
        GetProvinceLookUp("AspNetUsers_ProvinceDiv");
        GetAllDepartmentDiv("AspNetUsers_DepartmentDiv");

    })

</script>