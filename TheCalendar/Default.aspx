<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheCalendar.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><h2>Welcome to the Calendar Appointment App</h2><br />

            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>

            <br />
            <br />

            <asp:DropDownList ID="LstTime" runat="server">
                <asp:ListItem>10:00 AM</asp:ListItem>
                <asp:ListItem>11:00 AM</asp:ListItem>
                <asp:ListItem>12:00 PM</asp:ListItem>
                <asp:ListItem>1:00 PM</asp:ListItem>
                <asp:ListItem>2:00 PM</asp:ListItem>
                <asp:ListItem>3:00 PM</asp:ListItem>
                <asp:ListItem>5:00 PM</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
            <br />
            <br />
            <asp:Label ID="LblResult" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
