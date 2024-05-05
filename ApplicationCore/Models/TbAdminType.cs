using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbAdminType
{
    public int Id { get; set; }

    public string Type { get; set; } = null!;

    public string Permissions { get; set; } = null!;

    public virtual ICollection<TbAdminUser> TbAdminUsers { get; set; } = new List<TbAdminUser>();
}
