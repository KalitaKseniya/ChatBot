using ChatBot.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ChatBot.Controllers
{
    public class ChatController : Controller
    {
        // GET: Chat
        private int i = 0;
        private static ChatContext myDB = new ChatContext();
        [HttpPost]
        public ActionResult MyForm(string mine)
        {
            int iMine = Int32.Parse(mine);
            iMine = (iMine + 1) % myDB.Chats.Count();
            ViewBag.i = iMine;
            ViewBag.NextSelected = myDB.Chats.ToList().ElementAt(iMine);
            return PartialView();
        }
        public ActionResult Index()
        {
            ViewBag.i = i;
            ViewBag.NextSelected = myDB.Chats.ToList().ElementAt(0);

            return View(myDB.Chats);
        }

        public ActionResult HandleButtonClick(string mine)
        {
            int iMine = Int32.Parse(mine);

            //          i = (i + 1) % myDB.Chats.Count();
            //iMine = (iMine) % myDB.Chats.Count();
            ViewBag.i = iMine;
            ViewBag.NextSelected = myDB.Chats.ToList().ElementAt(iMine);
            return PartialView("MyForm");
        }
    }
}