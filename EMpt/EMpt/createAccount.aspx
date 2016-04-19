<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createAccount.aspx.cs" Inherits="EMpt.createAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form" runat="server" data-toggle="validator" role="form">
    <div class="container-fluid" >
        <div style="margin-top:50px; width:75% " class="text-center center-block alert alert-info">
            <p>                
                <p>
                    <b>¡Gracias por tu interes en ser parte de nuestra red de empresas!</b><br />
                    Por favor, ingresa todos los datos que se te piden en la forma
                </p>
                <br />
                <span><small><strong>R</strong> = Denota campo requerido</small></span>
            </p>
        </div>
        <div style="width:25%; margin:auto; margin-top:25px;">
            <div class="form-group has-feedback" >
                <div class="input-group">
                    <asp:TextBox ID="names" runat="server" CssClass="form-control text-capitalize text-primary" required AutoCompleteType="Disabled" placeholder="Nombre(s)"></asp:TextBox>
                    <span class="input-group-addon" title="Nombre(s) requerido"><strong>R</strong></span>
                </div>                              
            </div>
            <div class="form-group" >
                <div class="input-group">
                    <asp:TextBox ID="lastName" runat="server" CssClass="form-control text-capitalize text-primary" required AutoCompleteType="Disabled" placeholder="Apellido Paterno"></asp:TextBox>
                    <span class="input-group-addon" title="Apellido requerido"><strong>R</strong></span>
                </div>                
            </div>
            <div class="form-group" >
                <div class="input-group">
                    <asp:TextBox ID="email" runat="server" CssClass="form-control" required AutoCompleteType="Disabled" TextMode="Email" placeholder="Correo electronico"></asp:TextBox>
                    <span class="input-group-addon" title="Email requerido"><strong>R</strong></span>
                </div>                
            </div>
            <div class="form-group" >
                <div class="input-group">
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" required AutoCompleteType="Disabled" placeholder="Nombre de usuario"></asp:TextBox>
                    <span class="input-group-addon" title="Usuario requerido"><strong>R</strong></span>
                </div>                
            </div>
            <div class="form-group" >
                <div class="input-group">
                    <asp:TextBox ID="password" runat="server" CssClass="form-control" required AutoCompleteType="Disabled" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                    <span class="input-group-addon" title="Contraseña requerida"><strong>R</strong></span>
                </div>                
            </div>
            <div class="form-group" >
                <div class="input-group">
                    <asp:TextBox ID="cPassword" runat="server" CssClass="form-control" required AutoCompleteType="Disabled" TextMode="Password" placeholder="Confirmar contraseña"></asp:TextBox>
                    <span class="input-group-addon" title="Confirmat contraseña requerida"><strong>R</strong></span>
                </div>                
            </div>
            <asp:Button ID="btnCreateAccount" runat="server" Text="Crear Cuenta" CssClass="btn btn-primary center-block" />
        </div>  
        <div class="panel panel-footer" style="margin-top:10%; margin-bottom:0%">
            <footer class="text-center" >
                Version 1.0
            </footer>
        </div>      
        </div>            
    </form>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
