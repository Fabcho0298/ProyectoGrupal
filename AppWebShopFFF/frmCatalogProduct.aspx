<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmCatalogProduct.aspx.cs" Inherits="AppWebShopFFF.frmCatalogProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section__presentation">
            <article class="article__presentation">
                <h2 class="section__title">Catálogo</h2>
                <p class="section__text">
                    Es esta sección llamada Catálogo, se podrán observar todos los instrumentos y accesorios musicales que las Tres F ofrece al público; de igual manera, no dude en utilizar los filtros o el buscador, estos facilitadores provocarán que la búsqueda de un artículo o accesorio musical sea más específica.
                </p>
            </article>        
    </section>

        <section class="section__catalog">

            <aside class="section__filtersCatalog">
                        <h4 class="section__title">Filters</h4><br />
                        <asp:RadioButtonList runat="server" ID="rbChoice">
                            <asp:ListItem Text="Instrument" />
                            <asp:ListItem Text="Accesorie" />
                    </asp:RadioButtonList><br />

                        <h4 class="section__title">Categories</h4><br />
                        <asp:DropDownList runat="server" CssClass="form-control" AutoPostBack="false" ID="cbxClass">
                            <asp:ListItem Text="Cordofonos" />
                            <asp:ListItem Text="Aerofonos" />
                            <asp:ListItem Text="Idionofonos" />
                            <asp:ListItem Text="Membranofonos" />
                            <asp:ListItem Text="Electrofonos" /> 
                            <asp:ListItem Text="Audio y Video" /> 
                    </asp:DropDownList>
                    <section class="section__button">
                        <asp:Button class="form__button--apply" Text="Apply" runat="server" id="btnFiltrar" onClick="btnFiltrar_Click"/>
                </section>
            </aside>

            <section class="section__listArticles">
                        <asp:DataList runat="server" DataKeyField="codigo" DataSourceID="dtlCatalogo" RepeatColumns="3" ID="data1" class="section__dataList">
                    <ItemTemplate>
                        <article class="article__catalog">
                    
                                    <img src='<%#Eval("foto")%>' class="article__image" alt="aqui va la img" />
                                    <aside>
                                        <div class="article__name--catalog">
                                            <h4>'<%#Eval("nombre")%>' </h4>
                                            <strong>'<%#Eval("precioVenta")%>'</strong>

                                            <asp:Label Text='<%#Eval("codigo")%>' runat="server" Visible="false"/>
                                        </div>
                                    </aside>

                                          
                            <section class="section__button">
                                <asp:Button class="form__button" Text="Look" runat="server" id="btnVer" onClick="btnVer_Click"/>
                            </section>

                        </article>
                    </ItemTemplate>
                </asp:DataList>
            </section>
            

            <asp:SqlDataSource runat="server" ID ="dtlCatalogo" ConnectionString='<%$ ConnectionStrings:DbFFFConnectionString %>' 
                SelectCommand="SELECT [foto], [nombre], [precioVenta], [codigo] FROM [TblArticulo]" />

        </section>
    
   
</asp:Content>
