<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Banka.aspx.cs" Inherits="Banka" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">Anasayfa</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">Banka Ekle</a>
					</li>
				</ul>
			</div>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> Banka Ekleme Paneli</h2>
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
							  <label class="control-label" for="typeahead">Banka Adı </label>
							  <div class="controls">
								<asp:TextBox ID="_txtBankaAdi" CssClass="span6 typeahead" runat="server" data-provide="typeahead" data-items="4" data-source='["Akbank","İş Bankası","Garanti Bankası","İNG Bank","Vakıf Bank","Ziraat Bankası","Yapı Kredi Bankası","Bank Asya","Odea Bank"]'></asp:TextBox>
							  </div>
							</div>  
							<div class="form-actions">
                         <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Kaydet" OnClick="Button1_Click" />
							
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

