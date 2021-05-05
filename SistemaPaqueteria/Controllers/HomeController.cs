using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SistemaPaqueteria.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Rastreo de envios";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Acceso al sistema.";

            return View();
        }
    }
}