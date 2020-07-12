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
    public partial class frmModifyProduct : System.Web.UI.Page
    {
        private Article varArticulos;

        private DbFFFEntities entidades;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            this.entidades = new DbFFFEntities();
            int codigo = Convert.ToInt32(this.txtCode.Text);
            TblArticulo articulo = this.entidades.TblArticulo.FirstOrDefault(u => u.codigo.Equals(codigo));

            articulo.nombre = this.txtName.Text;
            articulo.marca = this.txtBrand.Text;
            articulo.peso = Convert.ToInt32(this.txtWeight.Text);
            articulo.cantidad = Convert.ToInt32(this.txtCuantity.Text);
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

        public void clean()
        {
            this.txtName.Text = " ";
            this.txtBrand.Text = " ";
            this.txtCuantity.Text = " ";
            this.txtDescription.Text = " ";
            this.txtWeight.Text = " ";
            this.txtSalePrice.Text =  " ";
            this.txtBuyPrice.Text = " ";
            this.txtSaleIVA.Text = " ";
            this.cbxClass.Text =  " ";
            this.cbxStated.Text = " ";
            this.rbChoice.Text = " ";
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
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

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            this.entidades = new DbFFFEntities();

            int codigo = Convert.ToInt32(this.txtCode.Text);

            TblArticulo articulo = this.entidades.TblArticulo.FirstOrDefault(u => u.codigo.Equals(codigo));

            this.entidades.TblArticulo.Remove(articulo);

            this.entidades.SaveChanges();

            Response.Write("<script>alert('Article has been deleted succesfully')</script>");
            //  Response.Redirect("Login.aspcx");
        }
    }
}