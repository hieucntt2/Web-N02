using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebQLCuaHangThucPham.Models;

namespace WebQLCuaHangThucPham.Areas.Admins.Controllers
{
    public class PTTTsController : Controller
    {
        private QLCuaHangThucPhamEntities1 db = new QLCuaHangThucPhamEntities1();

        // GET: Admins/PTTTs
        public ActionResult Index()
        {
            return View(db.PTTTs.ToList());
        }

        // GET: Admins/PTTTs/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PTTT pTTT = db.PTTTs.Find(id);
            if (pTTT == null)
            {
                return HttpNotFound();
            }
            return View(pTTT);
        }

        // GET: Admins/PTTTs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admins/PTTTs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaPTTT,TenPT")] PTTT pTTT)
        {
            if (ModelState.IsValid)
            {
                db.PTTTs.Add(pTTT);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(pTTT);
        }

        // GET: Admins/PTTTs/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PTTT pTTT = db.PTTTs.Find(id);
            if (pTTT == null)
            {
                return HttpNotFound();
            }
            return View(pTTT);
        }

        // POST: Admins/PTTTs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaPTTT,TenPT")] PTTT pTTT)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pTTT).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(pTTT);
        }

        // GET: Admins/PTTTs/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PTTT pTTT = db.PTTTs.Find(id);
            if (pTTT == null)
            {
                return HttpNotFound();
            }
            return View(pTTT);
        }

        // POST: Admins/PTTTs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            PTTT pTTT = db.PTTTs.Find(id);
            db.PTTTs.Remove(pTTT);
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
