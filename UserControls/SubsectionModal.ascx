<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubsectionModal.ascx.cs" Inherits="SIAS.UserControls.SubsectionModal" %>


<div class="modal fade" id="SubsectionModals" tabindex="-1" role="dialog" aria-labelledby="mySubsectionModalLabel">
    <div class="modal-dialog modal-lg" role="document" style="width: 90%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="mySubsectionModalLabel">Subsection  
[<label style="color: red;" id="Subsection_Id">0</label>]    
                    <label style="color: red;" id="SubsectionStatusUpdateMessgae" />
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Id: </label>
                    <div class="col-md-2 col-sm-2 col-xs-12">lable</div>


                </div>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">TypeId: </label>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <input type="text" class="form-control" placeholder="Enter TypeId" id="Subsection_TypeId" />
                    </div>


                </div>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">SubsectionId: </label>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div class="form-control" placeholder="Enter SubsectionId" id="ddlSubsection_SubsectionIdDiv">Lookup</div>
                    </div>


                </div>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Description: </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                        <input type="text" class="form-control" placeholder="Enter Description" id="Subsection_Description" />
                    </div>


                </div>
                <div class="row">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Order: </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                        <input type="text" class="form-control" placeholder="Enter Order" id="Subsection_Order" />
                    </div>


                </div>
                <script type="text/javascript"></script>
                <div class="ln_solid"></div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <label data-dismiss="modal" aria-label="Close" class="btn btn-primary">Cancel</label>
                        <label onclick="SaveSubsection()" type="submit" class="btn btn-success">Submit</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
