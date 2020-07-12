using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Article
    {
        public int codigo { set; get; }
        public string nombre { set; get; }
        public string marca { set; get; }
        public int peso { set; get; }
        public int cantidad { set; get; }
        public string descripcion { set; get; }
        public string tipoArticulo { set; get; }
        public string clasificacion { set; get; }
        public string foto { set; get; }
        public string estado { set; get; }
        public decimal precioCompra { set; get; }
        public decimal precioVenta { set; get; }
        public decimal precioVentaIva { set; get; }

        public decimal precioVentaIVA()
        {

            int iva = 13;

            if (this.precioVenta <= 15000)
            {
                this.precioVentaIva = (this.precioCompra * iva) + this.precioCompra;
            }
            return precioVentaIva;
        }
    }
}
