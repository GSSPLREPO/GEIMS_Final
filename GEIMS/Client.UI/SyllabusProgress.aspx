﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrustMain.Master" AutoEventWireup="true" CodeBehind="SyllabusProgress.aspx.cs" Inherits="GEIMS.Client.UI.SyllabusProgress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            $(document.getElementById('<%= tabs.ClientID %>')).tabs();
        });
    </script>
      <style>
        .TextArea {
            max-width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="divCurrenTabSelected" class="hidden" visible="false">div1</div>
    <div id="divMain" style="width: 100%; text-align: left; padding-top: 5px;">
        <div id="divTitle" class="pageTitle" style="width: 100%;">
            Syllabus Progress
       <%--     <asp:LinkButton CausesValidation="false" ID="lnkAddNewClass" runat="server" CssClass="btn-blue btn-blue-medium Detach" OnClick="lnkAddNewClass_OnClick">Add New</asp:LinkButton>
            &nbsp;
			 <asp:LinkButton CausesValidation="false" ID="lnkViewList" runat="server" CssClass="btn-blue btn-blue-medium Detach" OnClick="lnkViewList_OnClick">View List</asp:LinkButton>--%>
        </div>
        <div id="divContent" style="height: 100%; font-family: Verdana;">
            <div id="divContent1" style="width: 10%; float: left; height: 100%; color: white;">1</div>

            <div id="divContent2" style="width: 80%; float: left; height: 100%;">
                <div style="text-align: left; width: 20%; float: left;" class="label">
                    Teacher :<span style="color: red">*</span>
                </div>
                <div style="text-align: left; float: left; width: 60%;">
                    <asp:DropDownList ID="ddlEmployeeList" runat="server" AutoPostBack="true" CssClass=" Droptextarea" Width="260px" OnSelectedIndexChanged="ddlEmployeeList_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                <div id="divGrid" runat="server" style="text-align: center; padding-top: 10px; padding-bottom: 10px; padding-right: 10px; width: 100%;">

                    <br />

                </div>
                <asp:GridView ID="gvSyllabusPlanning" runat="server" AutoGenerateColumns="False"
                    BorderColor="#3B5998" BorderWidth="3px" BorderStyle="Solid" CellPadding="4" GridLines="Both"
                    Font-Names="verdana" Font-Size="12px" Width="100%" BackColor="White" OnRowCommand="gvSyllabusPlanning_RowCommand" OnPreRender="gvSyllabusPlanning_PreRender">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <RowStyle BackColor="White" Height="20px" ForeColor="#333333" />
                    <Columns>
                         <asp:BoundField DataField="SchoolName" HeaderText="School">
                                <HeaderStyle Width="20%" HorizontalAlign="left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="left" Width="20%" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ClassName" HeaderText="Class">
                                <HeaderStyle Width="5%" HorizontalAlign="left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="left" Width="5%" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                                <asp:BoundField DataField="DivisionName" HeaderText="Division">
                                <HeaderStyle Width="5%" HorizontalAlign="left" VerticalAlign="Top" />
                                <ItemStyle HorizontalAlign="left" Width="5%" VerticalAlign="Top" Wrap="true" />
                            </asp:BoundField>
                        <asp:BoundField DataField="ChapterNameAndNoENG" HeaderText="Chapters">
                            <HeaderStyle Width="40%" HorizontalAlign="left" VerticalAlign="Top" />
                            <ItemStyle HorizontalAlign="left" Width="40%" VerticalAlign="Top" Wrap="true" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SyllabusDetailsENG" HeaderText="Syllabus Details">
                            <HeaderStyle Width="40%" HorizontalAlign="left" VerticalAlign="Top" />
                            <ItemStyle HorizontalAlign="left" Width="40%" VerticalAlign="Top" Wrap="true" />
                        </asp:BoundField>

                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="false" ImageUrl="~/Images/Edit.png"
                                    CommandName="Edit1" CommandArgument='<%# Eval("SyllabusPlanTID")%>' Height="20px" Width="20px" />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="center" />
                            <ItemStyle HorizontalAlign="center" Width="10%" />
                        </asp:TemplateField>

                    </Columns>
                    <FooterStyle BackColor="#3B5998" Font-Bold="True" Font-Names="Verdana" Font-Size="12px" />
                    <PagerStyle BackColor="#3B5998" ForeColor="White" HorizontalAlign="center" />
                    <SelectedRowStyle BackColor="#2B558E" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#3B5998" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
               <center> <div id="NoDataFoundDiv" runat="server" visible="false">No Data Found</div></center>
                <div id="tabs" runat="server" class="style-tabs" visible="False" style="width: 100%;">
                    <ul>
                        <li><a id="tabClassDetails" href="#tabs-1">Syllabus Progress</a></li>
                    </ul>
                    <div id="tabs-1" style="height: 765px; padding: 5px 5px 5px 5px;" class="gradientBoxesWithOuterShadows">
                        <%--Height : 559Px--%>
                        <div style="width: 100%;">
                            <div class="divclasswithfloat">
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    School Name :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; width: 30%; float: left;">
                                    <asp:DropDownList ID="ddlSchoolName" runat="server" CssClass=" Droptextarea" Width="260px" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="ddlSchoolName_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Section Name :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: right; width: 30%;">
                                    <asp:DropDownList ID="ddlSection" runat="server" CssClass=" Droptextarea" Width="260px" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="ddlSection_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="divclasswithfloat">
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Class Name :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: left; width: 30%;">
                                    <asp:DropDownList ID="ddlClassName" runat="server" CssClass=" Droptextarea" Width="260px" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="ddlClassName_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Division Name :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: right; width: 30%;">
                                    <asp:DropDownList ID="ddlDivisionName" runat="server" CssClass=" Droptextarea" Width="260px" Enabled="true">
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="divclasswithfloat">


                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Subject :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: left; width: 30%;">
                                    <asp:DropDownList ID="ddlSubject" runat="server" CssClass=" Droptextarea" Width="260px" Enabled="true">
                                    </asp:DropDownList>
                                </div>
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Year :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: left; width: 30%;">
                                    <asp:DropDownList ID="ddlYear" runat="server" CssClass=" Droptextarea" Width="260px" Enabled="true">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="divclasswithfloat">
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Chapter Name And No Eng :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: left; width: 80%;">
                                    <asp:TextBox ID="txtChapterNameAndNoENG" runat="server" CssClass="validate[required] TextArea" Width="90%" TextMode="MultiLine"></asp:TextBox>
                                </div>

                            </div>
                            <div class="divclasswithfloat">

                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Chapter Name And No GUJ :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: left; width: 80%;">
                                    <asp:TextBox ID="txtChapterNameAndNoGUJ" runat="server" CssClass="validate[required] TextArea" Width="90%" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="divclasswithfloat">
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Syllabus Details Eng :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: left; width: 80%;">
                                    <asp:TextBox ID="txtSyllabusDetailsENG" runat="server" CssClass="validate[required] TextArea" Width="90%" TextMode="MultiLine"></asp:TextBox>
                                </div>

                            </div>
                            <div class="divclasswithfloat">

                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Syllabus Details GUJ :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: left; width: 80%;">
                                    <asp:TextBox ID="txtSyllabusDetailsGUJ" runat="server" CssClass="validate[required] TextArea" Width="90%" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="divclasswithfloat">
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Syllabus Remark :
                                </div>
                                <div style="text-align: left; float: left; width: 80%;">
                                    <asp:TextBox ID="txtSyllabusRemark" runat="server" CssClass="TextArea" Width="90%" TextMode="MultiLine"></asp:TextBox>
                                </div>

                            </div>
                            <div class="divclasswithfloat" id="SyllabusPlanningDiv1" runat="server">
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Month :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: left; width: 30%;">
                                    <asp:DropDownList ID="ddlMonth" runat="server" CssClass=" Droptextarea" Width="260px" Enabled="true" AutoPostBack="True">
                                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                                        <asp:ListItem Value="1">January</asp:ListItem>
                                        <asp:ListItem Value="2">February</asp:ListItem>
                                        <asp:ListItem Value="3">March</asp:ListItem>
                                        <asp:ListItem Value="4">April</asp:ListItem>
                                        <asp:ListItem Value="5">May</asp:ListItem>
                                        <asp:ListItem Value="6">June</asp:ListItem>
                                        <asp:ListItem Value="7">July</asp:ListItem>
                                        <asp:ListItem Value="8">August</asp:ListItem>
                                        <asp:ListItem Value="9">September</asp:ListItem>
                                        <asp:ListItem Value="10">October</asp:ListItem>
                                        <asp:ListItem Value="11">November</asp:ListItem>
                                        <asp:ListItem Value="12">December</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Teacher :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: right; width: 30%;">
                                    <asp:DropDownList ID="ddlTeacherList" runat="server" CssClass=" Droptextarea" Width="260px">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="divclasswithfloat" id="SyllabusPlanningDiv2" runat="server">
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Plan Start Date :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: left; width: 30%;">
                                    <asp:TextBox ID="txtPlanStartDate" runat="server" CssClass="TextBox" Width="150px"></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" Format="dd/MM/yyyy" PopupButtonID="txtPlanStartDate" TargetControlID="txtPlanStartDate">
                                    </ajaxToolkit:CalendarExtender>
                                </div>
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Plan End Date :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: right; width: 30%;">
                                    <asp:TextBox ID="txtPlanEndDate" runat="server" CssClass="TextBox" Width="150px"></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="txtPlanEndDate" TargetControlID="txtPlanEndDate">
                                    </ajaxToolkit:CalendarExtender>
                                </div>
                            </div>
                            <div class="divclasswithfloat" id="SyllabusPlanningDiv3" runat="server" visible="false">
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Actual Start Date :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: left; width: 30%;">
                                    <asp:TextBox ID="txtActualStartDate" runat="server" CssClass="validate[required] TextBox" Width="150px"></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd/MM/yyyy" PopupButtonID="txtActualStartDate" TargetControlID="txtActualStartDate">
                                    </ajaxToolkit:CalendarExtender>
                                </div>
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                    Actual End Date :<span style="color: red">*</span>
                                </div>
                                <div style="text-align: left; float: right; width: 30%;">
                                    <asp:TextBox ID="txtActualEndDate" runat="server" CssClass="validate[required] TextBox" Width="150px"></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender4" runat="server" Format="dd/MM/yyyy" PopupButtonID="txtActualEndDate" TargetControlID="txtActualEndDate">
                                    </ajaxToolkit:CalendarExtender>
                                </div>
                            </div>
                               <div class="divclasswithfloat" id="SyllabusRecoveredDiv" runat="server" visible="false">
                                <div style="text-align: left; width: 20%; float: left;" class="label">
                                  Syllabus Recovered :
                                </div>
                                <div style="text-align: left; float: left; width: 80%;">
                                    <asp:TextBox ID="txtSyllabusRecovered" runat="server" CssClass="TextArea" Width="90%" TextMode="MultiLine"></asp:TextBox>
                                  
                                </div>
                             
                            </div>

                            <div style="width: 100%; text-align: right;" class="divclasswithoutfloat">
                                <asp:Button runat="server" ID="btnSaveClass" Text="Save" CssClass="btn-blue-new btn-blue-medium" OnClick="btnSaveClass_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div id="divContent3" style="width: 10%; float: right;"></div>
            </div>
        </div>
    </div>
</asp:Content>
