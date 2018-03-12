<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">Yönetim Panel</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">Anasayfa</a>
					</li>
				</ul>
			</div>
<div class="row-fluid sortable">
            <div class="box span4">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-list"></i> Bugünki Hesap Özeti</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<ul class="dashboard-list">
							<li>
								<a href="#">
									<i class="icon icon-color icon-square-plus"></i>            
									<span class="green"><asp:Label ID="_lblBugun_Yatirilan" runat="server"></asp:Label></span>
									Yatırılan Tutar                                    
								</a>
							</li>
						  <li>
							<a href="#">
							  <i class="icon icon-color icon-square-minus"></i> 
							  <span class="red"><asp:Label ID="_lblBugun_Cekilen" runat="server"></asp:Label></span>
							  Çekilen Tutar
							</a>
						  </li>
						  <li>
							<a href="#">
							  <i class="icon icon-color icon-briefcase"></i> 
							  <span class="blue">
            <asp:Label ID="_lblBugun_Toplam" runat="server"></asp:Label></span>
							  Kalan Tutar                                    
							</a>
						  </li>
						</ul>
					</div>
				</div>
        <div class="box span4">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-list"></i> Bu Ayki Hesap Özeti</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<ul class="dashboard-list">
							<li>
								<a href="#">
									<i class="icon icon-color icon-square-plus"></i>                            
									<span class="green"><asp:Label ID="_lblBuAy_Yatirilan" runat="server"></asp:Label></span>
									Yatırılan Tutar                                    
								</a>
							</li>
						  <li>
							<a href="#">
							  <i class="icon icon-color icon-square-minus"></i> 
							  <span class="red"><asp:Label ID="_lblBuAy_Cekilen" runat="server"></asp:Label></span>
							  Çekilen Tutar
							</a>
						  </li>
						  <li>
							<a href="#">
							  <i class="icon icon-color icon-briefcase"></i> 
							  <span class="blue">
            <asp:Label ID="_lblBuAy_Toplam" runat="server"></asp:Label></span>
							  Kalan Tutar                                    
							</a>
						  </li>
						</ul>
					</div>
				</div>
            <div class="box span4">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-list"></i> Bu Yılki Hesap Özeti</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<ul class="dashboard-list">
							<li>
								<a href="#">
									<i class="icon icon-color icon-square-plus"></i>                            
									<span class="green"><asp:Label ID="_lblBuYil_Yatirilan" runat="server"></asp:Label></span>
									Yatırılan Tutar                                    
								</a>
							</li>
						  <li>
							<a href="#">
							  <i class="icon icon-color icon-square-minus"></i> 
							  <span class="red"><asp:Label ID="_lblBuYil_Cekilen" runat="server"></asp:Label></span>
							  Çekilen Tutar
							</a>
						  </li>
						  <li>
							<a href="#">
							  <i class="icon icon-color icon-briefcase"></i> 
							  <span class="blue">
            <asp:Label ID="_lblBuYil_Toplam" runat="server"></asp:Label></span>
							  Kalan Tutar                                    
							</a>
						  </li>
						</ul>
					</div>
				</div>
        </div>
        			<div class="row-fluid sortable">
				<div class="box span4">
					<div class="box-header well">
						<h2><i class="icon-th"></i> Tabs</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<ul class="nav nav-tabs" id="myTab">
							<li class="active"><a href="#info">Banka Hesap Adeti</a></li>
							<li><a href="#custom">Genel Toplam Girdi</a></li>
							<li><a href="#messages">Genel Toplam Çıktı</a></li>
						</ul>
						 
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane active" id="info">
					<center><span class="icon32 icon-color icon-profile"/></span><br />
                        <span style="font-size: large"><strong>Toplam Banka Hesap Adeti :&nbsp; </strong></span><br />
                        
                                <button class="btn btn-large btn-primary"><asp:Label ID="_lblToplamBankaHesapAdet" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label></button></center>
					
<%--					<div>
        </div>--%>
							</div>
							<div class="tab-pane" id="custom">
												<center><span class="icon32 icon-color icon-add"/></span><br />
                        <span style="font-size: large"><strong>Toplam Girdiler :&nbsp; </strong></span><br />
                        
                                <button class="btn btn-large btn-success"><asp:Label ID="_lblGenelToplamTutar" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label></button></center>
                             
							</div>
							<div class="tab-pane" id="messages">
												<center><span class="icon32 icon-color icon-remove"/></span><br />
                        <span style="font-size: large"><strong>Toplam Çıktılar :&nbsp; </strong></span><br />
                        
                                <button class="btn btn-large btn-danger"><asp:Label ID="_lblGenelToplamCikti" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label></button></center>
                                
							</div>
						</div>
					</div>
				</div><!--/span-->
                        				<div class="box span4">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-list"></i> Buttons</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content buttons">
						<p class="btn-group">
							  <button class="btn">Left</button>
							  <button class="btn">Middle</button>
							  <button class="btn">Right</button>
						</p>
						<p>
							<button class="btn btn-small"><i class="icon-star"></i> Icon button</button>
							<button class="btn btn-small btn-primary">Small button</button>
							<button class="btn btn-small btn-danger">Small button</button>
						</p>
						<p>
							<button class="btn btn-small btn-warning">Small button</button>
							<button class="btn btn-small btn-success">Small button</button>
							<button class="btn btn-small btn-info">Small button</button>
						</p>
						<p>
							<button class="btn btn-small btn-inverse">Small button</button>
							<button class="btn btn-large btn-primary btn-round">Round button</button>
							<button class="btn btn-large btn-round"><i class="icon-ok"></i></button>
							<button class="btn btn-primary"><i class="icon-edit icon-white"></i></button>
						</p>
						<p>
							<button class="btn btn-mini">Mini button</button>
							<button class="btn btn-mini btn-primary">Mini button</button>
							<button class="btn btn-mini btn-danger">Mini button</button>
							<button class="btn btn-mini btn-warning">Mini button</button>
						</p>
						<p>
							<button class="btn btn-mini btn-info">Mini button</button>
							<button class="btn btn-mini btn-success">Mini button</button>
							<button class="btn btn-mini btn-inverse">Mini button</button>
						</p>
					</div>
				</div><!--/span-->
        			</div>
<%--			<div class="sortable row-fluid">
				<a data-rel="tooltip" title="6 new members." class="well span3 top-block" href="#">

				</a>

				<a data-rel="tooltip" title="4 new pro members." class="well span3 top-block" href="#">
					<span><img src="img/001_01.png" /></span>
					<div>Genel Toplam Girdiler</div>
					
				</a>

				<a data-rel="tooltip" title="$34 new sales." class="well span3 top-block" href="#">

				</a>
			</div>--%>
			

        			

        


			</div>
    </span>
</asp:Content>

