<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AppWebShopFFF._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main class="main__section">
         <section class="section__presentation">
            <article class="article__presentation">
                <h2 class="section__title">Tienda Musical FFF</h2>
                <p class="section__text">En <span class="article__span">“Las Tres F”</span>, buscamos brindarles a los clientes lo último en artículos musicales y buena calidad, siempre con el objetivo de satisfacer a nuestra prioridad número uno, nuestros clientes. 
                </p>
            </article>
        </section>

        <h2 class="section__title">Lo más nuevo en el mercado</h2>
        <section class="section__newestproducts">
            
                <article id="carouselExampleControls" class="section__carrusel carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="/www/img/drum1.jpg" class="d-block w-500" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="/www/img/piano2.jpg" class="d-block w-500" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="/www/img/electrica4.jpg" class="d-block w-500" alt="...">
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>

                </article>

        </section>

        <h2 class="section__title">Artículos más vendidos</h2>
        <section class="section__mostsold">
            <article id="carouselExampleControls1" class="section__carrusel carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="/www/img/piano3.jpg" class="d-block w-500" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="/www/img/drum2.jpg" class="d-block w-500" alt="...">
                    </div>
                    <div class="carousel-item">
                      <img src="/www/img/electrica4.jpg" class="d-block w-500" alt="...">
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleControls1" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleControls1" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>

                </article>
        </section>

        <h2 class="section__title">Sponsors</h2>
        <section class="section__sponsors">
            <article class="articles__sponsors">
                 <i class="fab fa-js section__icons" title="Un 50%"></i>
                 <i class="fab fa-html5 section__icons" title="Un 50%"></i>
                 <i class="fab fa-css3-alt section__icons" title="Un 50%"></i>
                 <i class="fab fa-vuejs section__icons" title="Un 50%"></i>
                 <i class="fab fa-react section__icons" title="Un 50%"></i>
                 <i class="fab fa-angular section__icons" title="Un 50%"></i>
                 <i class="fab fa-wordpress-simple section__icons" title="Un 50%"></i>
                 <i class="fab fa-swift section__icons" title="Un 50%"></i>
                 <i class="fab fa-android section__icons" title="Un 50%"></i>
            </article>
        </section>

        <section class="section__category">
            <h2 class="section__title">Categorías</h2>
                  <section class="section__cards">
                <article class="article article__card">
                    <div class="article__containerimg">
                        <h4 class="card__title">Guitarras y Bajos</h4>
                        <img class="article__imgcategory" src="www/img/clasificacion1.jpg" alt="aqui va gta">
                         <p>Lorem ipsum dolor adipisci natus nobis officiis quae magni ea? Voluptates natus facilis fugit suscipit nesciunt molestias esse.</p>
                    </div>                    
                </article>
    
                <article class="article article__card">
                    <div class="article__containerimg">
                        <h4 class="card__title">Teclados y Piano</h4>
                        <img class="article__imgcategory" src="www/img/clasificacion2.jpg" alt="aqui va gta">
                         <p>Lorem ipsum dolor adipisci natus nobis officiis quae magni ea? Voluptates natus facilis fugit suscipit nesciunt molestias esse.</p>
                    </div> 
                </article>
    
                <article class="article article__card">
                    <div class="article__containerimg">
                        <h4 class="card__title">Baterias</h4>
                        <img class="article__imgcategory" src="www/img/clasificacion3.jpg" alt="aqui va gta">
                         <p>Lorem ipsum dolor adipisci natus nobis officiis quae magni ea? Voluptates natus facilis fugit suscipit nesciunt molestias esse.</p>
                    </div>
                </article>
    
                <article class="article article__card">
                    <div class="article__containerimg">
                        <h4 class="card__title">Electrónicos</h4>
                        <img class="article__imgcategory" src="www/img/clasificacion4.jpg" alt="aqui va gta">
                         <p>Lorem ipsum dolor adipisci natus nobis officiis quae magni ea? Voluptates natus facilis fugit suscipit nesciunt molestias esse.</p>
                    </div>
                </article>
                
            </section>
        </section>
        

      </main>
</asp:Content>
