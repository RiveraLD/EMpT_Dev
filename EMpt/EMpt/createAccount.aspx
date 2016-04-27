<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createAccount.aspx.cs" Inherits="EMpt.createAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />   
    <link href="Content/bootstrap-theme.css" rel="stylesheet" /> 
    <style>
        .footer { 
            position:relative;
            bottom:0;
            width:100%;
            min-height:150px;
            background-color:gray;
        }
    </style>
</head>
<body>
    <form id="form" runat="server" data-toggle="validator" role="form">
    <div class="container-fluid" style="min-height:800px">
        <div style="margin-top:50px; width:75% " class="text-center center-block alert alert-info">   
            <p>
                <b>¡Gracias por tu interes en ser parte de nuestra red de empresas!</b><br />
                Por favor, ingresa todos los datos que se te piden en la forma
            </p>
            <br />
            <span><small><strong>R</strong> = Denota campo requerido</small></span>                                
        </div>
        
        <div style="width:25%; margin:auto; margin-top:25px;">
            <div class="form-group has-feedback" >
                <div class="input-group">
                    <asp:TextBox ID="names" runat="server" CssClass="form-control text-capitalize text-primary" required AutoCompleteType="Disabled" placeholder="Nombre(s)" MaxLength="10"></asp:TextBox>
                    <span class="input-group-addon" title="Nombre(s) requerido"><strong>R</strong></span>
                </div>                              
            </div>
            <div class="form-group" >
                <div class="input-group">
                    <asp:TextBox ID="lastName" runat="server" CssClass="form-control text-capitalize text-primary" required AutoCompleteType="Disabled" placeholder="Apellido Paterno" MaxLength="15"></asp:TextBox>
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
                    <asp:TextBox ID="password" runat="server" CssClass="form-control" name="password" required AutoCompleteType="Disabled" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                    <span class="input-group-addon" title="Contraseña requerida"><strong>R</strong></span>
                </div>                
            </div>
            <div class="form-group" >
                <div class="input-group">
                    <asp:TextBox ID="cPassword" runat="server" CssClass="form-control" name="confirmPassword" required AutoCompleteType="Disabled" TextMode="Password" placeholder="Confirmar contraseña"></asp:TextBox>
                    <span class="input-group-addon" title="Confirmar contraseña requerida"><strong>R</strong></span>                    
                </div>  
                <div class="text-center" style="margin-top:25px; margin-bottom:20px">
                    <asp:CompareValidator ID="CompareValidator1" CssClass="alert alert-warning" runat="server" ErrorMessage="<b>Error</b>: Contraseñas no son iguales." ControlToCompare="password" ControlToValidate="cPassword" ValidationGroup="checkPsw"></asp:CompareValidator>
                </div>              
                <%--<div class="text-center" style="margin-top:50px; margin-bottom:40px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="alert alert-warning" runat="server" ErrorMessage="<b>Atencion</b>:Contraseña no es valida" ValidationExpression="^[a-zA-Z0-9'@&#^]{8,12}$" ControlToValidate="cPassword" ValidationGroup="checkPsw"></asp:RegularExpressionValidator>
                </div>--%>
            </div>
            <asp:Button ID="btnCreateAccount" runat="server" Text="Crear Mi Cuenta" CssClass="btn btn-primary center-block" OnClick="btnCreateAccount_Click" ValidationGroup="checkPsw" CausesValidation="true" />
        </div>
        <asp:Panel ID="errorPanel" runat="server" Visible="false">
            <div class="alert alert-danger text-center center-block" style="margin-top:20px; width:50%">
                <asp:Label ID="errorLbl" runat="server"></asp:Label>                
            </div>
        </asp:Panel>      
    </div>
    <div class="footer" style="margin-top:100px;">
        <div style="height:45px" ></div>
        <div style="height:45px"></div>
        <div class="text-center" style=" height:45px;">
            <small><strong><a href="http://www.riveratg.com" style="color:white">www.riveratg.com</a> - Tu socio en tecnologia</strong></small>
            <br />
            <small><strong>@2016 Rivera Technology Group. All Rights Reserved.</strong></small>
            <br />
            <small><strong>El Paso, Texas</strong></small>
        </div>
    </div>         
    </form>        
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script>
        $(document).ready(function () {
            $('#form').formValidation({
                framework: 'bootstrap',
                icon: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    confirmPassword: {
                        validators: {
                            identical: {
                                field: 'password',
                                message: 'The password and its confirm are not the same'
                            }
                        }
                    }
                }
            });
        });
    </script>
    
</body>
</html>
