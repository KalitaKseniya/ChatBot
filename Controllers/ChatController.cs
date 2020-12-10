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
        private static int i = 0;
        private static ChatContext myDB = new ChatContext();
        
        public ActionResult Index()
        {
            ViewBag.i = i;
            ViewBag.NextSelected = myDB.Chats.ToList().ElementAt(0);

            return View(myDB.Chats);
        }

        public ActionResult HandleButtonClick(string mine)
        {
            i = (i + 1) % myDB.Chats.Count();
            ViewBag.i = i;
            ViewBag.NextSelected = myDB.Chats.ToList().ElementAt(i);
            return View("Index", myDB.Chats);
        }
    }
}