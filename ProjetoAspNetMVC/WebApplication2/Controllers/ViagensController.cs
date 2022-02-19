using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Data;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    public class ViagensController : Controller
    {
        private contextoViagens db = new contextoViagens();

        // GET: Viagens
        public ActionResult Index()
        {
            return View(db.viagens.ToList());
        }

        // GET: Viagens/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Viagens viagens = db.viagens.Find(id);
            if (viagens == null)
            {
                return HttpNotFound();
            }
            return View(viagens);
        }

        // GET: Viagens/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Viagens/Create
        // Para proteger-se contra ataques de excesso de postagem, ative as propriedades específicas às quais deseja se associar. 
        // Para obter mais detalhes, confira https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Origem,Destino,IDA,VOLTA")] Viagens viagens)
        {
            if (ModelState.IsValid)
            {
                db.viagens.Add(viagens);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(viagens);
        }

        // GET: Viagens/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Viagens viagens = db.viagens.Find(id);
            if (viagens == null)
            {
                return HttpNotFound();
            }
            return View(viagens);
        }

        // POST: Viagens/Edit/5
        // Para proteger-se contra ataques de excesso de postagem, ative as propriedades específicas às quais deseja se associar. 
        // Para obter mais detalhes, confira https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Origem,Destino,IDA,VOLTA")] Viagens viagens)
        {
            if (ModelState.IsValid)
            {
                db.Entry(viagens).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(viagens);
        }

        // GET: Viagens/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Viagens viagens = db.viagens.Find(id);
            if (viagens == null)
            {
                return HttpNotFound();
            }
            return View(viagens);
        }

        // POST: Viagens/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Viagens viagens = db.viagens.Find(id);
            db.viagens.Remove(viagens);
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
