﻿<%@ Page Language="C#" MasterPageFile="~/MasterPagePortals.master"
    AutoEventWireup="true" CodeFile="OfficeJobQuality.aspx.cs" Inherits="Employee_OfficeRegister_OfficeJobQuality"
    Title="مطلوبیت های کار انجام شده" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxp" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxuc" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxrp" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxm" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxpc" %>
<%@ Register Assembly="TSP.WebControls" Namespace="TSP.WebControls" TagPrefix="TSPControls" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="PersianDateControls 2.0" Namespace="PersianDateControls" TagPrefix="pdc" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="PersianDateControls 2.0" Namespace="PersianDateControls" TagPrefix="pdc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxhf" %>
    <%@ Register Src="~/UserControl/OfficeInfoUserControl.ascx" TagName="OfficeInfoUserControl"
    TagPrefix="UserControlOfficeInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
        <pdc:PersianDateScriptManager ID="PersianDateScriptManager" runat="server" CalendarCSS="PickerCalendarCSS"
            CalendarDayWidth="50" FooterCSS="PickerFooterCSS" ForbidenCSS="PickerForbidenCSS"
            FrameCSS="PickerCSS" HeaderCSS="PickerHeaderCSS" SelectedCSS="PickerSelectedCSS"
            WeekDayCSS="PickerWeekDayCSS" WorkDayCSS="PickerWorkDayCSS">
        </pdc:PersianDateScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div style="text-align: right" id="DivReport" class="DivErrors" runat="server" visible="true">
                    <asp:Label ID="LabelWarning" runat="server" Text="Label"></asp:Label>[<a class="closeLink"
                        href="#">بستن</a>]</div>
                     <TSPControls:CustomASPxRoundPanelMenu ID="CustomASPxRoundPanelMenu1" runat="server"
                    >
                    <PanelCollection>
                        <dxp:PanelContent>


  
                                   
                                                    <table >
                                                        <tbody>
                                                            <tr>
                                                                <td >
                                                                    <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="جدید"
                                                                        CausesValidation="False" ID="BtnNew" UseSubmitBehavior="False" EnableViewState="False"
                                                                        EnableTheming="False" OnClick="BtnNew_Click">
                                                                        
                                                                        <Image  Url="~/Images/icons/new.png">
                                                                        </Image>
                                                                    </TSPControls:CustomAspxButton>
                                                                </td>
                                                                <td >
                                                                    <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="ویرایش"
                                                                        CausesValidation="False" Width="25px" ID="btnEdit" UseSubmitBehavior="False"
                                                                        EnableViewState="False" EnableTheming="False" OnClick="btnEdit_Click">
                                                                       
                                                                        <Image  Url="~/Images/icons/edit.png">
                                                                        </Image>
                                                                        <ClientSideEvents Click="function(s, e) {
	if (grid.GetFocusedRowIndex()&lt; 0)
 {
   e.processOnServer=false;
   alert('ردیفی انتخاب نشده است');
 }

}" />
                                                                    </TSPControls:CustomAspxButton>
                                                                </td>
                                                                <td >
                                                                    <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="مشاهده"
                                                                        CausesValidation="False" Width="25px" ID="btnView" UseSubmitBehavior="False"
                                                                        EnableViewState="False" EnableTheming="False" OnClick="btnView_Click">
                                                                       
                                                                        <Image  Url="~/Images/icons/view.png">
                                                                        </Image>
                                                                        <ClientSideEvents Click="function(s, e) {
	if (grid.GetFocusedRowIndex()&lt; 0)
 {
   e.processOnServer=false;
   alert('ردیفی انتخاب نشده است');
 }
}" />
                                                                    </TSPControls:CustomAspxButton>
                                                                </td>
                                                                <td>
                                                                    <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="نظر کارشناسي"
                                                                        ID="btnOpinion" UseSubmitBehavior="False" EnableViewState="False" EnableTheming="False"
                                                                        OnClick="btnOpinion_Click">
                                                                       
                                                                        <Image  Url="~/Images/icons/User comment.png">
                                                                        </Image>
                                                                        <ClientSideEvents Click="function(s, e) {
	if (grid.GetFocusedRowIndex()&lt; 0)
 {
   e.processOnServer=false;
   alert('ردیفی انتخاب نشده است');
 }
}" />
                                                                    </TSPControls:CustomAspxButton>
                                                                </td>
                                                                <td width="10px" align="center">
                                                                    <TSPControls:MenuSeprator runat="server" ID="MenuSeprator1"></TSPControls:MenuSeprator>
                                                                </td>
                                                                <td >
                                                                    <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="بازگشت"
                                                                        CausesValidation="False" ID="btnBack" UseSubmitBehavior="False" EnableViewState="False"
                                                                        EnableTheming="False" OnClick="btnBack_Click">
                                                                        
                                                                        <Image  Url="~/Images/icons/Back.png">
                                                                        </Image>
                                                                    </TSPControls:CustomAspxButton>
                                                                </td>
                                                                <td >
                                                                    <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="بازگشت به مدیریت اعضای حقوقی"
                                                                        CausesValidation="False" ID="btnBackToManagment" UseSubmitBehavior="False" EnableViewState="False"
                                                                        EnableTheming="False" OnClick="btnBackToManagment_Click">
                                                                       
                                                                        <Image  Url="~/Images/icons/BakToManagment.png">
                                                                        </Image>
                                                                    </TSPControls:CustomAspxButton>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                               </dxp:PanelContent>
                    </PanelCollection>
                </TSPControls:CustomASPxRoundPanelMenu>
                    <TSPControls:CustomAspxMenuHorizontal ID="ASPxMenu1" runat="server"  
                       
                        OnItemClick="ASPxMenu1_ItemClick" >
                        <Items>
                            <dxm:MenuItem Name="Job" Text="مشخصات سابقه کاری">
                            </dxm:MenuItem>
                            <dxm:MenuItem Name="JobQuality" Text="مطلوبیت کار" Selected="True">
                            </dxm:MenuItem>
                        </Items>
                       
                    </TSPControls:CustomAspxMenuHorizontal>
                </div>
                <br />
                <UserControlOfficeInfo:OfficeInfoUserControl ID="OfficeInfoUserControl" runat="server" />
                <br />
                <TSPControls:CustomAspxDevGridView ID="CustomGridJobQuality" runat="server" AutoGenerateColumns="False"
                    ClientInstanceName="grid"  
                    DataSourceID="OdbFactorDocuments" KeyFieldName="JhqId" OnDetailRowExpandedChanged="GridViewFinancialStatus_DetailRowExpandedChanged"
                    OnHtmlDataCellPrepared="CustomGridJobQuality_HtmlDataCellPrepared" OnAutoFilterCellEditorInitialize="CustomGridJobQuality_AutoFilterCellEditorInitialize"
                    Width="100%">
                    <ClientSideEvents FocusedRowChanged="function(s, e) {
	jgrid.ExpandDetailRow(jgrid.GetFocusedRowIndex());
}" />
                    <Templates>
                        <DetailRow>
                            <TSPControls:CustomAspxDevGridView ID="GridViewJudge" runat="server" AutoGenerateColumns="False"
                                  DataSourceID="ObjdsJudgment"
                                EnableViewState="False" KeyFieldName="JudgeId" OnBeforePerformDataSelect="GridViewJudge_BeforePerformDataSelect"
                              OnHtmlDataCellPrepared="GridViewJudge_HtmlDataCellPrepared">
                                
                                <Columns>
                                    <dxwgv:GridViewDataTextColumn Caption="نام" FieldName="FirstName" VisibleIndex="0">
                                        <CellStyle Wrap="False">
                                        </CellStyle>
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn Caption="نام خانوادگی" FieldName="LastName" VisibleIndex="1">
                                        <CellStyle Wrap="False">
                                        </CellStyle>
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn Caption="سمت" FieldName="NcName" VisibleIndex="2">
                                        <CellStyle Wrap="False">
                                        </CellStyle>
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn Caption="شماره جلسه" FieldName="MeetingId" VisibleIndex="3">
                                        <CellStyle Wrap="False">
                                        </CellStyle>
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn Caption="امتیاز" FieldName="JudgeGrade" VisibleIndex="5">
                                        <PropertiesTextEdit DisplayFormatString="#.###">
                                            <Style HorizontalAlign="Right"></Style>
                                        </PropertiesTextEdit>
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn VisibleIndex="7" Width="1px">
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn Caption="نظر کارشناسی" FieldName="JudgeViewPoint" VisibleIndex="8"
                                        Width="200px">
                                        <CellStyle Wrap="True">
                                        </CellStyle>
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn Caption="تاریخ جلسه" FieldName="MeetingDate" VisibleIndex="4">
                                        <CellStyle Wrap="False">
                                        </CellStyle>
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn Caption="وضعیت" FieldName="Confirm" VisibleIndex="6">
                                    </dxwgv:GridViewDataTextColumn>
                                </Columns>
                              
                                <SettingsDetail IsDetailGrid="True" />
                            </TSPControls:CustomAspxDevGridView>
                        </DetailRow>
                    </Templates>
                   
                    <Columns>
                        <dxwgv:GridViewDataTextColumn Caption="نوع" FieldName="OfdName" Name="OfdName" VisibleIndex="0">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="ضریب" FieldName="OfdValue" VisibleIndex="1">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="فایل" FieldName="FilePath" Visible="False"
                            VisibleIndex="2">
                            <DataItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" Text="آدرس فایل" __designer:wfdid="w21"
                                    NavigateUrl='<%# Bind("FilePathl") %>' Target="_blank"></asp:HyperLink>
                            </DataItemTemplate>
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="توضیحات" FieldName="Description" VisibleIndex="2">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="تاریخ ایجاد" FieldName="CreateDate" VisibleIndex="3">
                            <CellStyle Wrap="False">
                            </CellStyle>
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewCommandColumn Caption=" " VisibleIndex="4" ShowClearFilterButton="true">
                          
                        </dxwgv:GridViewCommandColumn>
                    </Columns>
                    
                    <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                </TSPControls:CustomAspxDevGridView>
                       <TSPControls:CustomASPxRoundPanelMenu ID="CustomASPxRoundPanelMenu2" runat="server"
                    >
                    <PanelCollection>
                        <dxp:PanelContent>


  
                                                        <table >
                                                            <tbody>
                                                                <tr>
                                                                    <td >
                                                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="جدید"
                                                                            CausesValidation="False" ID="BtnNew2" UseSubmitBehavior="False" EnableViewState="False"
                                                                            EnableTheming="False" OnClick="BtnNew_Click">
                                                                           
                                                                            <Image  Url="~/Images/icons/new.png">
                                                                            </Image>
                                                                        </TSPControls:CustomAspxButton>
                                                                    </td>
                                                                    <td >
                                                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="ویرایش"
                                                                            CausesValidation="False" Width="25px" ID="btnEdit2" UseSubmitBehavior="False"
                                                                            EnableViewState="False" EnableTheming="False" OnClick="btnEdit_Click">
                                                                           
                                                                            <Image  Url="~/Images/icons/edit.png">
                                                                            </Image>
                                                                            <ClientSideEvents Click="function(s, e) {
	if (grid.GetFocusedRowIndex()&lt; 0)
 {
   e.processOnServer=false;
   alert('ردیفی انتخاب نشده است');
 }
}" />
                                                                        </TSPControls:CustomAspxButton>
                                                                    </td>
                                                                    <td >
                                                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="مشاهده"
                                                                            CausesValidation="False" Width="25px" ID="btnView2" UseSubmitBehavior="False"
                                                                            EnableViewState="False" EnableTheming="False" OnClick="btnView_Click">
                                                                         
                                                                            <Image  Url="~/Images/icons/view.png">
                                                                            </Image>
                                                                            <ClientSideEvents Click="function(s, e) {
	if (grid.GetFocusedRowIndex()&lt; 0)
 {
   e.processOnServer=false;
   alert('ردیفی انتخاب نشده است');
 }
}" />
                                                                        </TSPControls:CustomAspxButton>
                                                                    </td>
                                                                    <td>
                                                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="نظر کارشناسي"
                                                                            ID="btnOpinion1" UseSubmitBehavior="False" EnableViewState="False" EnableTheming="False"
                                                                            OnClick="btnOpinion_Click">
                                                                            
                                                                            <Image  Url="~/Images/icons/User comment.png">
                                                                            </Image>
                                                                            <ClientSideEvents Click="function(s, e) {
	if (grid.GetFocusedRowIndex()&lt; 0)
 {
   e.processOnServer=false;
   alert('ردیفی انتخاب نشده است');
 }
}" />
                                                                        </TSPControls:CustomAspxButton>
                                                                    </td>
                                                                    <td width="10px" align="center">
                                                                        <TSPControls:MenuSeprator runat="server" ID="MenuSeprator2"></TSPControls:MenuSeprator>
                                                                    </td>
                                                                    <td >
                                                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="بازگشت"
                                                                            CausesValidation="False" ID="ASPxButton6" UseSubmitBehavior="False" EnableViewState="False"
                                                                            EnableTheming="False" OnClick="btnBack_Click">
                                                                           
                                                                            <Image  Url="~/Images/icons/Back.png">
                                                                            </Image>
                                                                        </TSPControls:CustomAspxButton>
                                                                    </td>
                                                                    <td >
                                                                        <TSPControls:CustomAspxButton IsMenuButton="true" runat="server" Text=" "  ToolTip="بازگشت به مدیریت اعضای حقوقی"
                                                                            CausesValidation="False" ID="ASPxButton1" UseSubmitBehavior="False" EnableViewState="False"
                                                                            EnableTheming="False" OnClick="btnBackToManagment_Click">
                                                                           
                                                                            <Image  Url="~/Images/icons/BakToManagment.png">
                                                                            </Image>
                                                                        </TSPControls:CustomAspxButton>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                 </dxp:PanelContent>
                    </PanelCollection>
                </TSPControls:CustomASPxRoundPanelMenu>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:ModalUpdateProgress ID="ModalUpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel1"
            BackgroundCssClass="modalProgressGreyBackground" DisplayAfter="0">
            <ProgressTemplate>
                <div class="modalPopup">
                    لطفا صبر نمایید
                    <img src="../../Image/indicator.gif" align="middle" />
                </div>
            </ProgressTemplate>
        </asp:ModalUpdateProgress>
        <asp:HiddenField ID="OfficeId" runat="server" Visible="False" />
        <asp:HiddenField ID="OfficeRequest" runat="server" Visible="False" />
        <asp:HiddenField ID="JobId" runat="server" Visible="False" />
        <asp:HiddenField ID="PgMode" runat="server" Visible="False" />
        <asp:HiddenField ID="HDMode" runat="server" Visible="False" />
        <dxhf:ASPxHiddenField ID="HiddenFieldOffice" runat="server">
        </dxhf:ASPxHiddenField>
        <asp:ObjectDataSource ID="OdbFactorDocuments" runat="server" SelectMethod="FindByJobCode"
            TypeName="TSP.DataManager.DocOffJobHistoryQualityManager">
            <FilterParameters>
                <asp:Parameter Name="newparameter" />
            </FilterParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="-1" Name="JhId" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjdsJudgment" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="SelectByJobQuality" TypeName="TSP.DataManager.TrainingJudgmentManager">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="-1" Name="PkId" SessionField="PKId" Type="Int32" />
                <asp:Parameter DefaultValue="-1" Name="JudgeId" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>

</asp:Content>
