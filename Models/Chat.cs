using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ChatBot.Models
{
    public class Chat
    {
        public string UserRequest { get; set; }
        public string BotResponse { get; set; }
        public string NextIDs { get; set; }
        public int Id { get; set; }
    }
}