using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using WebApplication2.Models;

namespace WebApplication2.Data
{
    public class contextoPessoa:DbContext
    {
        public DbSet<Pessoa> pessoa { get; set; }
    }
}