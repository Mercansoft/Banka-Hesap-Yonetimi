<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BankaList.aspx.cs" Inherits="BankaList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">Anasayfa</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">Banka Listesi</a>
					</li>
				</ul>
			</div>
			
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-user"></i> Banka Listesi</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Banka Adı</th>
								  <th>Admin</th>
							  </tr>
						  </thead>   
						  <tbody>
        <asp:Repeater ID="_lstBanka" runat="server">
            <ItemTemplate>
							<tr>
								<td><%#Eval("BankaAdi") %></td>
								
								<td class="center">
									<a class="btn btn-success" href="Detay.aspx?HesapDokum=<%#Eval("BankaID") %>">
										<i class="icon-zoom-in icon-white"></i>  
										Hesabı Görüntüle                                            
									</a>
									<a class="btn btn-danger" href="BankaList.aspx?Sil=<%#Eval("BankaID") %>">
										<i class="icon-trash icon-white"></i> 
										Bankayı Sil
									</a>
								</td>
							</tr>
            </ItemTemplate>
        </asp:Repeater>

						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

			
			</div>
</asp:Content>

