using System.Web;
using System.Web.Optimization;

namespace SistemaPaqueteria
{
    public class BundleConfig
    {
        // Para obtener más información sobre las uniones, visite https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {

            /// Librerias JavaScript
            bundles.Add(new Bundle("~/bundles/jquery").Include(
                    "~/Assets/js/jquery-3.6.0.min.js"));

            bundles.Add(new Bundle("~/bundles/bootstrap").Include(
                      "~/Assets/js/bootstrap.bundle.js"));

            bundles.Add(new Bundle("~/bundles/datatables").Include(
                      "~/Assets/js/datatables.min.js"));

            bundles.Add(new Bundle("~/bundles/jqueryValidate").Include(
                      "~/Assets/js/jquery.validate.min.js"));

            bundles.Add(new Bundle("~/bundles/sweetAlert2").Include(
                      "~/Assets/js/sweetalert2.all.min.js"));

            /// librerias css
            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Assets/css/bootstrap.min.css",
                      "~/Assets/css/datatables.min.css",
                      "~/Assets/css/site.css"));

        }
    }
}
