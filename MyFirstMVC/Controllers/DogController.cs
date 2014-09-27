using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyFirstMVC.Controllers
{
    public class DogController : Controller
    {
        private static List<MyFirstMVC.Models.Dog> dogs = new List<Models.Dog>();

        //
        // GET: /Dog/
        public ActionResult Index()
        {
            return View(dogs);
        }

        //
        // POST: /Dog/Create
        [HttpPost]
        public ActionResult Create(Models.Dog d)
        {
            if (!ModelState.IsValid)
            {
                return View("Create", d);
            }
            dogs.Add(d);
            return RedirectToAction("Index");
        }

        //
        //GET: /Dog/Edit/1
        public ActionResult Edit(int id)
        {
            Models.Dog d = new Models.Dog()
            foreach(Models.Dog dog in dogs)
            {
                if(dog.ID == id)
                {
                    d.Name = dog.Name;
                    d.Age = dog.Age;
                    d.ID = dog.ID;
                }
            }
        }
    }
}
