using System;
using System.Collections.Generic;

namespace ApplicationCore.Models;

public partial class TbAdminUser
{
    public int Id { get; set; }

    public string Email { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public int TypeId { get; set; }

    public byte[] LastLogin { get; set; } = null!;

    public virtual TbAdminType Type { get; set; } = null!;
}
