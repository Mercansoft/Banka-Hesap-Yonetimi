<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Ayar.aspx.cs" Inherits="Ayar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">Anasayfa</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">Ayar</a>
					</li>
				</ul>
			</div>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> Yonetici Ayar Paneli</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal">
						  <fieldset>
							<%--<legend>Datepicker, Autocomplete, WYSIWYG</legend>--%>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Kullanıcı Adı </label>
							  <div class="controls">
								<asp:TextBox ID="_txtKullaniciAdi" CssClass="span6 typeahead" runat="server"></asp:TextBox>
							  </div>
							</div>  
                           <div class="control-group">
							  <label class="control-label" for="typeahead">Şifre </label>
							  <div class="controls">
								<asp:TextBox ID="_txtSifre" CssClass="span6 typeahead" runat="server"></asp:TextBox>
							  </div>
							</div>  
							<div class="form-actions">
                         <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Kaydet" OnClick="Button1_Click"/><br /><br />
							<asp:Label ID="Label1" runat="server"></asp:Label>
							</div>            
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->


			<!--/row-->
			
			<!--/row-->
    
					<!-- content ends -->
			</div>
</asp:Content>

