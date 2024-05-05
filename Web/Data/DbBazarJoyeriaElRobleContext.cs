using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using ApplicationCore.Models;

namespace Infrastructure.Data
{
    public class DbBazarJoyeriaElRobleContext : DbContext
    {
        public DbBazarJoyeriaElRobleContext (DbContextOptions<DbBazarJoyeriaElRobleContext> options)
            : base(options)
        {
        }

        public DbSet<ApplicationCore.Models.TbUser> TbUser { get; set; } = default!;
    }
}
