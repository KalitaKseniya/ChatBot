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
            int iMine = Int32.Parse(mine);//id database begins from 1 and in listts- from 0
            List<Chat> list = new List<Chat>();
            if (iMine == 0)
            {
                list.Add(myDB.Chats.ToList().First());
                return PartialView("MyForm", list);
            }
            ViewBag.NextSelected = myDB.Chats.ToList().Find(a => a.Id == iMine);
                                                                        //            ViewBag.i = iMine;
            if (ViewBag.NextSelected.NextIDs == null)
            {
                return PartialView("MyForm", list);
            }
            var tmp = ViewBag.NextSelected.NextIDs.Split(',') ;
            List<int> NextIds  = new List<int>();
            foreach(var item in tmp)
            {
                NextIds.Add(Int32.Parse(item));
            }
            foreach(var item in NextIds)
            {
                list.Add(myDB.Chats.ToList().Find(a => a.Id == item)) ; 
            }
            //foreach (var a in myDB.Chats.ToList())
            //{

            //    if (NextIds.Contains(a.Id))
            //    {
            //        list.Add(a);
            //    }
            //}
            ////list = (List<Chat>)myDB.Chats.ToList().Where(a => 
            //    (ViewBag.NextSelected.NextIDs.Contains(a.Id.ToString() + ",") || ViewBag.NextSelected.NextIDs.Contains(a.Id.ToString() + ".")));
            return PartialView("MyForm", list);
        }
    }
}