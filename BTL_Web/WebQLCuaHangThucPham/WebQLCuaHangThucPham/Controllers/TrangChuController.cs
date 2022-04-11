using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLCuaHangThucPham.Models;

namespace WebQLCuaHangThucPham.Controllers
{
    public class TrangChuController : Controller
    {
        // GET: TrangChu
        private QLCuaHangThucPhamEntities1 db = new QLCuaHangThucPhamEntities1();
        public ActionResult Index()
        {
            return View(db.SanPhams.Where(x => x.isActive == 0 && x.isDelete == 0).OrderByDescending(x => x.Time_Update).Take(8).ToList());
        }
        //public PartialViewResult SanPhamNB()
        //{
        //    //var SPMoi = from x in db.SanPhams join y in db.GiaSPs on x.MaSP equals y.MaSP
        //    //             where x.isActive == 0
        //    //             && x.isDelete == 0

        //    //             //orderby x.Time_Update descending
        //    //             select  x; 


        //    //ViewBag.SPMoi = SPMoi.Take(8);
        //    List<SanPham> lstSP = db.SanPhams.Where(x => x.isActive == 0 && x.isDelete == 0).OrderByDescending(x => x.Time_Update).ToList();
        //    return PartialView(lstSP);
        //}
        public PartialViewResult KM()
        {
            return PartialView(db.SanPhams.Where(x => x.isActive == 0 && x.isDelete == 0).ToList());
        }
    }
}