﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _5.CurrentDateAndTime
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Current time: " + DateTime.Now.ToString("HH:mm:ss tt"));
        }
    }
}
