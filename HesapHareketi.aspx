<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HesapHareketi.aspx.cs" Inherits="HesapHareketi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">Home</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">Forms</a>
					</li>
				</ul>
			</div>
			
        <div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> Hesap Hareketi Ekle</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal">
						  <fieldset>
							
							<div class="control-group">
							  <label class="control-label" for="typeahead">Miktar </label>
							  <div class="controls">
                               <asp:TextBox ID="_txtMiktar" CssClass="span6 typeahead" Width="200" runat="server" AutoPostBack="True" OnTextChanged="_txtMiktar_TextChanged"></asp:TextBox> Örn : (15,50)
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="date01">Banka Seçiniz</label>
							  <div class="controls">
								<asp:DropDownList ID="_drpBanka" data-rel="chosen" runat="server"></asp:DropDownList>
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="fileInput">Hesap Hareketi</label>
							  <div class="controls">
								 <asp:DropDownList ID="_drpHesapHareket" data-rel="chosen" runat="server"></asp:DropDownList>
							  </div>
							</div>    
							<div>
        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Kaydet" OnClick="Button1_Click" /><br /><br />
                                   <asp:Literal ID="_lblDurum" runat="server"></asp:Literal>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div>




			</div>
</asp:Content>

