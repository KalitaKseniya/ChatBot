using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ChatBot.Models
{
    public class ChatContext: DbContext
    {
        public DbSet<Chat> Chats { get; set; }
    }
}