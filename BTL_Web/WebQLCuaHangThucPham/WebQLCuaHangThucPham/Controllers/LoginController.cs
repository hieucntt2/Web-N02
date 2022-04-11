using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLCuaHangThucPham.Models;

namespace WebQLCuaHangThucPham.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        QLCuaHangThucPhamEntities1 db = new QLCuaHangThucPhamEntities1();
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangKy(/*[Bind(Include = "MaKH, HoTen, GioiTinh, Tuoi, Email, SDT, Time_Create, Time_Update, isActive, isDelete, TaiKhoan, MatKhau, Admin, DiaChi")]*/ KhachHang kh)
        {

            if (ModelState.IsValid)
            {

                if (kh.Time_Create == null) kh.Time_Create = DateTime.Now;
                if (kh.Time_Update == null) kh.Time_Update = DateTime.Now;
                kh.isDelete = 0;
                kh.isActive = 0;
                db.KhachHangs.Add(kh);
                db.SaveChanges();
            }
            return View();
        }
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(FormCollection f)
        {
            string taikhoan = "";
            string matkhau = "";
            if (!String.IsNullOrEmpty(f["txtTaiKhoan"]) && !String.IsNullOrEmpty(f["txtMatKhau"]))
            {
                taikhoan = f["txtTaiKhoan"].ToString();
                matkhau = f["txtMatKhau"].ToString();
                KhachHang kh = db.KhachHangs.SingleOrDefault(n => n.TaiKhoan == taikhoan && n.MatKhau == matkhau);
                if (kh != null)
                {
                    ViewBag.ThongBao = "Chúc mừng đăng nhập thành công";
                    Session["TaiKhoan"] = kh;
                    return /*RedirectToAction("Index", "Admin");*/View();
                }
                ViewBag.ThongBao = "Sai tên tài khoản hoặc mật khẩu";
                return View();
            }
            ViewBag.ThongBao = "Bạn phải nhập tài khoản và mật khẩu ";
            return View();
            //string taikhoan = f["txtTaiKhoan"].ToString();
            //string matkhau = f["txtMatKhau"].ToString();

        }

    }
}