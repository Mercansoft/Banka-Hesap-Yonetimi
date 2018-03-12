<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Detay.aspx.cs" Inherits="Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">Anasayfa</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">Hesap Dökümü</a>
					</li>
				</ul>
			</div>

			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-user"></i> Hesap Detaylarınız</h2>
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
								  <th>#ID</th>
								  <th>Banka Adı</th>
								  <th>Hesap Hareketi</th>
								  <th>Tutar</th>
								  <th>Tarih</th>
                                  <th>Yönetim</th>
							  </tr>
						  </thead>   
						  <tbody>
          <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
							<tr>
								<td>
                                    <%#Eval("IslemID") %>
                                </td>
								<td class="center">
                                    <%#Eval("BankaAdi") %>
                                </td>
								<td class="center">
                                    <%#Eval("HareketAdi") %>
								</td>
								<td class="center">
								<%#String.Format("{0:C}",Eval("Tutar")) %>
								</td>
								<td class="center">
                                  <%#Eval("Tarih") %>
								</td>
                                <td class="center">
									<a class="btn btn-danger" href="Detay.aspx?Sil=<%#Eval("IslemID") %>">
										<i class="icon-trash icon-white"></i> 
										İşlemi Sil
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

			<!--/row-->
			
			<!--/row-->
			
			</div>
</asp:Content>

