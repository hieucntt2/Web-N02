using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLCuaHangThucPham.Models;


namespace WebQLCuaHangThucPham.Controllers
{
    public class ThanhToanController : Controller
    {
        private QLCuaHangThucPhamEntities1 db = new QLCuaHangThucPhamEntities1();

        // GET: ThanhToan
        public ActionResult Index()
        {
            if (Session["GioHang"] == null)
            {
                RedirectToAction("Index", "TrangChu");
            }
            List<GioHang> lstGioHang = LayGioHang();
            ViewBag.TongTien = TongTien();
            
            return View(lstGioHang);
        }
        //lấy giot hàng
        public List<GioHang> LayGioHang()
        {
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang == null)
            {
                lstGioHang = new List<GioHang>();
                Session["GioHang"] = lstGioHang;
            }
            return lstGioHang;
        }

        private double TongTien()
        {
            double dTongTien = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                dTongTien = lstGioHang.Sum(n => n.ThanhTien);
            }
            ViewBag.TongTien = dTongTien;
            return dTongTien;
        }
        public ActionResult DatHang(int value = 1)
        {
            if (Session["GioHang"] == null)
            {
                RedirectToAction("Index", "TrangChu");
            }
            List<GioHang> lstGioHang = LayGioHang();
            ViewBag.TongTien = TongTien();
            if (value == 2)
            {
                ViewBag.PhuongThuc = "Chuyển khoản ngân hàng";
            }
            else
            {
                ViewBag.PhuongThuc = "Trả tiền mặt khi nhận hàng";
            }
            //Luu thong tin vao hoa don
            DonHang hoadon = new DonHang();
            hoadon.Time_Create = DateTime.Now;

            return View(lstGioHang);
        }
    }
}