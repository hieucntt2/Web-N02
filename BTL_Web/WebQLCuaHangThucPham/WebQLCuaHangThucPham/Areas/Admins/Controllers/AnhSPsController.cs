using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebQLCuaHangThucPham.Models;

namespace WebQLCuaHangThucPham.Areas.Admins.Controllers
{
    public class AnhSPsController : Controller
    {
        private QLCuaHangThucPhamEntities1 db = new QLCuaHangThucPhamEntities1();

        // GET: Admins/AnhSPs
        public ActionResult Index()
        {
            return View(db.AnhSPs.OrderBy(x => x.MaSP).ToList());
        }

        // GET: Admins/AnhSPs/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AnhSP anhSP = db.AnhSPs.Find(id);
            if (anhSP == null)
            {
                return HttpNotFound();
            }
            return View(anhSP);
        }

        // GET: Admins/AnhSPs/Create
        public ActionResult Create()
        {
            ViewBag.MaSP = new SelectList(db.SanPhams.ToList().Where(x => x.isActive == 0 && x.isDelete == 0).OrderBy(n => n.MaSP), "MaSP", "TenSP");
            return View();
        }

        // POST: Admins/AnhSPs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaAnh,MaSP,TenAnh,URL")] AnhSP anhSP, HttpPostedFileBase image)
        {
            if (image != null)
            {
                anhSP.URL = System.IO.Path.GetFileName(image.FileName);
                image.SaveAs(Server.MapPath("~/Content/Frond/img/" + image.FileName));

            }
            if (ModelState.IsValid)
                {
                db.AnhSPs.Add(anhSP);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaSP = new SelectList(db.SanPhams.ToList().Where(x => x.isActive == 0 && x.isDelete == 0).OrderBy(n => n.MaSP), "MaSP", "TenSP", anhSP.MaSP);
            return View(anhSP);
        }

        // GET: Admins/AnhSPs/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AnhSP anhSP = db.AnhSPs.Find(id);
            if (anhSP == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaSP = new SelectList(db.SanPhams.ToList().Where(x => x.isActive == 0 && x.isDelete == 0).OrderBy(n => n.MaSP), "MaSP", "TenSP", anhSP.MaSP);
            return View(anhSP);
        }

        // POST: Admins/AnhSPs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaAnh,MaSP,TenAnh,URL")] AnhSP anhSP, HttpPostedFileBase image)
        {
           
            if (ModelState.IsValid)
            {
                AnhSP a = db.AnhSPs.Find(anhSP.MaAnh);
                if (a != null)
                {
                    a.URL = System.IO.Path.GetFileName(image.FileName);
                    image.SaveAs(Server.MapPath("~/Content/Frond/img/" + image.FileName));
                }
                db.Entry(a).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaSP = new SelectList(db.SanPhams.ToList().Where(x => x.isActive == 0 && x.isDelete == 0).OrderBy(n => n.MaSP), "MaSP", "TenSP", anhSP.MaSP);
            return View(anhSP);
        }

        // GET: Admins/AnhSPs/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AnhSP anhSP = db.AnhSPs.Find(id);
            if (anhSP == null)
            {
                return HttpNotFound();
            }
            return View(anhSP);
        }

        // POST: Admins/AnhSPs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            AnhSP anhSP = db.AnhSPs.Find(id);
            db.AnhSPs.Remove(anhSP);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
