<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MyFirstMVC.Model.Dog>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>

        <h3>Cutie Dog Management System - Power of MVC</h3>
        <table style="width: 100%;">
            <tr>
                <th>&nbsp;</th>
                <th>
                    ID
                </th>
                <th>
                    Name
                </th>
                <th>
                    Age
                </th>
                <th>&nbsp;</th>
            </tr>
            <% foreach(var item in Model) {%>
            <tr>
                <td>
                        <%: Html.ActionLink("Edit", "Edit", new {id = item.ID}) %>
                        
                        <%: Html.ActionLink("Delete", "Delete", item %>
                </td>
                <td>
                    <%: item.ID %>
                </td>
                <td>
                    <%: item.Name %>
                </td>
                <td>
                    <%: item.Age %>
                </td>
                <td>
                    <% using(Html.BeginForm("Delete", "Dog", new {id = item.ID})) { %>
                        <input type="submit" value="Delete" />
                    <% } %>
                </td>
            </tr>
            <% } %>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <p><%: Html.ActionLink("Create New", "Create" %></p>
</asp:Content>
