<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Rapor.aspx.cs" Inherits="Rapor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">Anasayfa</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">Hesap Raporu</a>
					</li>
				</ul>
			</div>
        <div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> Hesap Raporlama</h2>
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
							  <label class="control-label" for="date01">Banka Seçiniz</label>
							  <div class="controls">
								<asp:DropDownList ID="_drpBanka" data-rel="chosen" runat="server"></asp:DropDownList>
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="date01">Başlangıç Tarihi</label>
							  <div class="controls">
                                
								<input type="text" class="input-xlarge datepicker" id="date01" runat="server">
							  </div>
							</div>
        					<div class="control-group">
							  <label class="control-label" for="date01">Bitiş Tarihi</label>
							  <div class="controls">
                                
								<input type="text" class="input-xlarge datepicker" id="date02" runat="server">
							  </div>
							</div>
							<div class="form-actions">
                                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Hesap Dökümünü Ver" OnClick="Button1_Click" />
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div>
			<asp:Panel ID="Panel1" runat="server">
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
                                    <asp:HyperLink ID="_hypGirdi" CssClass="btn btn-success" runat="server"> <i class="icon-zoom-in icon-white"></i>Girdiler </asp:HyperLink>
                                     <asp:HyperLink ID="_hypCikti" CssClass="btn btn-danger" runat="server"> <i class="icon-trash icon-white"></i>Çıktılar </asp:HyperLink>
                                    <asp:HyperLink ID="_hypHesapDokumu" CssClass="btn btn-info" runat="server"> <i class="icon-edit icon-white"></i>Hesap Dökümü </asp:HyperLink>
								</td>
							</tr>

						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div>
                </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
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
			
			</div>
			</asp:Panel>
			</div>
</asp:Content>

