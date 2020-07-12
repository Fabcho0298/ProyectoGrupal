using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AccesData;
using Model;

namespace AppWebShopFFF
{
    public partial class frmRegisterProduct : System.Web.UI.Page
    {
        private Article varArticulos;

        private DbFFFEntities entidades;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["codigo"] != null)
            {
                this.fCodigo.Equals(Request.QueryString["codigo"].ToString());
            }
            else
            {
                this.fCodigo = 0;
            }

            if (!IsPostBack)
            {
                this.loadArticles(this.fCodigo);
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            this.varArticulos = new Article();

            this.varArticulos.codigo = Convert.ToInt32(this.txtCode.Text);
            this.varArticulos.nombre = this.txtName.Text;
            this.varArticulos.marca = this.txtBrand.Text;
            this.varArticulos.peso = Convert.ToInt32(this.txtWeight.Text);
            this.varArticulos.cantidad = Convert.ToInt32(this.txtCuantity.Text);
            this.varArticulos.descripcion = this.txtDescription.Text;
            this.varArticulos.tipoArticulo = this.rbChoice.Text;
            this.varArticulos.clasificacion = this.cbxClass.Text;
            this.varArticulos.foto = "www/img/" + txtImage.FileName;
            this.varArticulos.estado = this.cbxStated.Text;
            this.varArticulos.precioCompra = Convert.ToDecimal(this.txtBuyPrice.Text);
            this.varArticulos.precioVenta = Convert.ToDecimal(this.txtSalePrice.Text);
            //this.txtSaleIVA.Text = Convert.ToString(varArticulos.precioVentaIVA().ToString("0.00"));
            this.varArticulos.precioVentaIva = Convert.ToDecimal(this.txtSaleIVA.Text);
            this.entidades = new DbFFFEntities();

            TblArticulo tbArticulo = new TblArticulo();

            tbArticulo.codigo = this.varArticulos.codigo;
            tbArticulo.nombre = this.varArticulos.nombre;
            tbArticulo.marca = this.varArticulos.marca;
            tbArticulo.peso = this.varArticulos.peso;
            tbArticulo.cantidad = this.varArticulos.cantidad;
            tbArticulo.descripcion = this.varArticulos.descripcion;
            tbArticulo.tipoArticulo = this.varArticulos.tipoArticulo;
            tbArticulo.calificacion = this.varArticulos.clasificacion;
            tbArticulo.foto = this.varArticulos.foto;
            tbArticulo.estado = this.varArticulos.estado;
            tbArticulo.precioCompra = this.varArticulos.precioCompra;
            tbArticulo.precioVenta = this.varArticulos.precioVenta;
            tbArticulo.precioVentaIva = this.varArticulos.precioVentaIva;

            this.entidades.TblArticulo.Add(tbArticulo);

            this.entidades.SaveChanges();

            Response.Write("<script>alert('Article has been submitted succesfully')</script>");

            //Response.Redirect("default.aspx");

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            this.entidades = new DbFFFEntities();
            int codigo = Convert.ToInt32(this.txtCode.Text);
            TblArticulo articulo = this.entidades.TblArticulo.FirstOrDefault(u => u.codigo.Equals(codigo));

            articulo.nombre = this.txtName.Text;
            articulo.marca = this.txtBrand.Text;
            articulo.peso = Convert.ToInt32(this.txtWeight.Text);
           // articulo.cantidad = Convert.ToInt32(this.txtCuantity.Text);
            articulo.descripcion = this.txtDescription.Text;
            articulo.tipoArticulo = this.rbChoice.Text;
            articulo.calificacion = this.cbxClass.Text;
            articulo.foto = "www/imagenes/" + txtImage.FileName;
            articulo.estado = this.cbxStated.Text;
            articulo.precioCompra = Convert.ToDecimal(this.txtBuyPrice.Text);
            articulo.precioVenta = Convert.ToDecimal(this.txtSalePrice.Text);
            articulo.precioVentaIva = Convert.ToDecimal(this.txtSaleIVA.Text);

            this.entidades.SaveChanges();

            Response.Write("<script>alert('Article has been updated succesfully')</script>");

            clean();
            //Response.Redirect("Login.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            this.entidades = new DbFFFEntities();

            int codigo = Convert.ToInt32(this.txtCode.Text);

            TblArticulo articulo = this.entidades.TblArticulo.FirstOrDefault(u => u.codigo.Equals(codigo));

            this.entidades.TblArticulo.Remove(articulo);

            this.entidades.SaveChanges();

            Response.Write("<script>alert('Article has been deleted succesfully')</script>");
            //  Response.Redirect("Login.aspcx");

        }

        int fCodigo;
    

 
        public void loadArticles(int tCodigo)
        {
            this.entidades = new DbFFFEntities();

            TblArticulo articulo = this.entidades.TblArticulo.FirstOrDefault(u => u.codigo == tCodigo);

            if (articulo != null)
            {
                Response.Write("<script>alert('Entro')</script>");
                this.txtCode.Text = articulo.codigo.ToString();
                this.txtName.Text = articulo.nombre;
                this.txtBrand.Text = articulo.marca;
                this.txtCuantity.Text = articulo.cantidad.ToString();
                this.rbChoice.Text = articulo.tipoArticulo;
                this.cbxStated.Text = articulo.estado;

                this.lbPhoto.Visible = false;
                this.txtImage.Visible = false;
                this.btnAgregar.Visible = false;
            }
        }

       

        public void clean()
        {
            this.txtName.Text = "";
            this.txtBrand.Text = "";
            this.txtCuantity.Text = "";
            this.txtDescription.Text = "";
            this.txtWeight.Text = ""; 
            this.txtSalePrice.Text = "";
            this.txtBuyPrice.Text = "";
            this.txtSaleIVA.Text = "";
            this.cbxClass.Text = "";
            this.cbxStated.Text = "";
            this.rbChoice.Text = "";
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            this.entidades = new DbFFFEntities();
            int codigo = Convert.ToInt32(this.txtCode.Text);
            TblArticulo articulo = this.entidades.TblArticulo.FirstOrDefault(u => u.codigo.Equals(codigo));

            if (articulo != null)
            {
                this.txtCode.Text = articulo.codigo.ToString();
                this.txtName.Text = articulo.nombre;
                this.txtBrand.Text = articulo.marca;
                this.txtWeight.Text = articulo.peso.ToString();
                this.txtDescription.Text = articulo.descripcion;
                this.txtCuantity.Text = articulo.cantidad.ToString();
                this.txtBuyPrice.Text = articulo.precioCompra.ToString();
                this.txtSalePrice.Text = articulo.precioVenta.ToString();
                this.txtSaleIVA.Text = articulo.precioVentaIva.ToString();
                this.rbChoice.Text = articulo.tipoArticulo;
                this.cbxClass.Text = articulo.calificacion;
                //this.txtImage.FileName = articulo.foto;
                this.cbxStated.Text = articulo.estado;

            }

        }

        public void requiredText()
        {
            this.txtName.ReadOnly = true;
            this.txtBrand.ReadOnly = true;
            this.txtCuantity.ReadOnly = true;
            this.txtDescription.ReadOnly = true;
            this.txtDescription.ReadOnly = true;
            this.txtDescription.ReadOnly = true;
            this.txtDescription.ReadOnly = true;
        }
    }
}