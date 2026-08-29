<%@ Control Language="C#" AutoEventWireup="true"  CodeBehind="UsersInDepartment.ascx.cs"  Inherits="SIAS.UserControls.UsersInDepartment" %>


<div class="modal fade" id="DepartmentUsersModals" tabindex="-1" role="dialog" aria-labelledby="myDepartmentUsersModalLabel">  
<div class="modal-dialog modal-lg" role="document" style="width: 90%;">  
<div class="modal-content">  
<div class="modal-header">  
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>  
<h4 class="modal-title" id="myDepartmentUsersModalLabel">DepartmentUsers  
<%--[<label style="color: red;" id="AspNetUsers_Id">0</label> ]  --%>  
<label style="color: red;" id="AspNetUsersStatusUpdateMessgae" />   
</h4>  
</div>  
<div class="modal-body" >  
<script type="text/javascript"></script>  
<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Email: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"   enabled="true"  placeholder="Enter Email"     id="AspNetUsers_Email"  /> </div> 


</div>
<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Name: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"   enabled="true"    placeholder="Enter Name"     id="AspNetUsers_Name"  /> </div> 


</div>
<div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Surname: </label>   
  <div class="col-md-4 col-sm-4 col-xs-12"><input type="text" class="form-control"   enabled="true"     placeholder="Enter Surname"     id="AspNetUsers_Surname"  /> </div> 
</div>

 <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Roles: </label>   
  <div id="AspNetUsers_USerRoleDiv"  class="col-md-4 col-sm-4 col-xs-12"></div> 
</div>   

     <div class="row">
    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Department: </label>   
  <div id="AspNetUsers_DepartmentDiv"  class="col-md-4 col-sm-4 col-xs-12"></div> 
</div>  

    <div class="ln_solid"></div>
    

   <div class="row">  
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">  
       <label  data-dismiss="modal" aria-label="Close"  class="btn btn-primary">Cancel</label>  
     <label  data-dismiss="modal" onclick="SaveDepartmentUsers()"  class="btn btn-success">Submit</label>  
 </div>  
 </div>   
</div>  
</div></div></div>  
<script  type="text/javascript"> 
    $(document).ready(function () {


        GetAllAspNetRolesDiv('AspNetUsers_USerRoleDiv');
        GetAllDepartmentDiv("AspNetUsers_DepartmentDiv");

    })

</script>