﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Models
{
    public class Link : BaseModel
    {
        public string Code { get; set; }
        public string Url { get; set; }
        public string UserId { get; set; }
    }
}
