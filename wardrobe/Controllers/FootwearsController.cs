using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using wardrobe.Models;

namespace wardrobe.Controllers
{
    public class FootwearsController : Controller
    {
        private wardrobeContext db = new wardrobeContext();

        // GET: Footwears
        public ActionResult Index()
        {
            var footwears = db.Footwears.Include(f => f.Color).Include(f => f.FootwearType).Include(f => f.Occassion).Include(f => f.Season);
            return View(footwears.ToList());
        }

        // GET: Footwears/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Footwear footwear = db.Footwears.Find(id);
            if (footwear == null)
            {
                return HttpNotFound();
            }
            return View(footwear);
        }

        // GET: Footwears/Create
        public ActionResult Create()
        {
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName");
            ViewBag.FootwearTypeID = new SelectList(db.FootwearTypes, "FootwearTypeID", "FootwearTypeName");
            ViewBag.OccassionID = new SelectList(db.Occassions, "OccassionID", "OccassionName");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName");
            return View();
        }

        // POST: Footwears/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "FootwearID,FootwearName,FootwearPhoto,FootwearTypeID,ColorID,SeasonID,OccassionID")] Footwear footwear)
        {
            if (ModelState.IsValid)
            {
                db.Footwears.Add(footwear);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName", footwear.ColorID);
            ViewBag.FootwearTypeID = new SelectList(db.FootwearTypes, "FootwearTypeID", "FootwearTypeName", footwear.FootwearTypeID);
            ViewBag.OccassionID = new SelectList(db.Occassions, "OccassionID", "OccassionName", footwear.OccassionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", footwear.SeasonID);
            return View(footwear);
        }

        // GET: Footwears/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Footwear footwear = db.Footwears.Find(id);
            if (footwear == null)
            {
                return HttpNotFound();
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName", footwear.ColorID);
            ViewBag.FootwearTypeID = new SelectList(db.FootwearTypes, "FootwearTypeID", "FootwearTypeName", footwear.FootwearTypeID);
            ViewBag.OccassionID = new SelectList(db.Occassions, "OccassionID", "OccassionName", footwear.OccassionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", footwear.SeasonID);
            return View(footwear);
        }

        // POST: Footwears/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "FootwearID,FootwearName,FootwearPhoto,FootwearTypeID,ColorID,SeasonID,OccassionID")] Footwear footwear)
        {
            if (ModelState.IsValid)
            {
                db.Entry(footwear).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName", footwear.ColorID);
            ViewBag.FootwearTypeID = new SelectList(db.FootwearTypes, "FootwearTypeID", "FootwearTypeName", footwear.FootwearTypeID);
            ViewBag.OccassionID = new SelectList(db.Occassions, "OccassionID", "OccassionName", footwear.OccassionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", footwear.SeasonID);
            return View(footwear);
        }

        // GET: Footwears/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Footwear footwear = db.Footwears.Find(id);
            if (footwear == null)
            {
                return HttpNotFound();
            }
            return View(footwear);
        }

        // POST: Footwears/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Footwear footwear = db.Footwears.Find(id);
            db.Footwears.Remove(footwear);
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
