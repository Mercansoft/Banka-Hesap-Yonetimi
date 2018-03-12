<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HesapDokumu.aspx.cs" Inherits="HesapDokumu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">Anasayfa</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">Hesap Özeti</a>
					</li>
				</ul>
			</div>

        <div class="row-fluid sortable">	
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2>Banka Hesaplarınız</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-bordered table-striped table-condensed">
                            <tr>
        <asp:Repeater ID="_lstHesaplar" runat="server">
            <ItemTemplate>
                                <td>
                                    <a class="btn btn-success" href="HesapDokumu.aspx?myp=<%#Eval("BankaID") %> ">
										<i class="icon-zoom-in icon-white"></i>  
										<%#Eval("BankaAdi") %>                                            
									</a>
                                </td>
            </ItemTemplate>
        </asp:Repeater>

                            </tr>
						 </table>     
					</div>
				</div><!--/span-->
			</div>
			
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-user"></i> Hesap Özetiniz</h2>
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
								  <th>Toplam Girdi</th>
								  <th>Toplam Çıktı</th>
								  <th>Kalan Toplam</th>
								  <th>Yönetim</th>
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
								<td>
                                <asp:Label ID="_lblBankaAdi" runat="server"></asp:Label></td>
								<td class="center"><asp:Label ID="_lblGirdi" runat="server"></asp:Label></td>
								<td class="center"><asp:Label ID="_lblCikti" runat="server"></asp:Label></td>
								<td class="center">
									<asp:Label ID="_lblKalanToplam" runat="server"></asp:Label>
								</td>
								<td class="center">
                                    <asp:HyperLink ID="_hypGirdi" CssClass="btn btn-success" runat="server">
                                     <i class="icon-zoom-in icon-white"></i>  
										Girdiler           
                                    </asp:HyperLink>
                                     <asp:HyperLink ID="_hypCikti" CssClass="btn btn-danger" runat="server">
                                     <i class="icon-trash icon-white"></i>  
										Çıktılar           
                                    </asp:HyperLink>
                                    <asp:HyperLink ID="_hypHesapDokumu" CssClass="btn btn-info" runat="server">
                                     <i class="icon-edit icon-white"></i>  
										Hesap Dökümü           
                                    </asp:HyperLink>
								</td>
							</tr>

						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

			<!--/row-->
			
			<!--/row-->
			
			</div>
</asp:Content>

