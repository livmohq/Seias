<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalDocuments.ascx.cs" Inherits="SIAS.UserControls.ModalDocuments" %>

<div class="modal fade" id="myDocuments" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       
                
                <h4 class="modal-title" id="myModalLabel">Authorizations
                    <label style="color: red;" id="Auth_Vehicles_Title" />
                </h4>
            </div>
            <div class="modal-body" style="min-height:600px;">
              <div id="DocumentOnline"></div>  

            </div>
        </div>

    </div>
</div>
