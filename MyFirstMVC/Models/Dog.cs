using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MyFirstMVC.Models
{
    public class Dog
    {
        [Required(ErrorMessage = "ID is required")]
        public int ID { get; set; }

        [Required(ErrorMessage = "Name is required"),
        StringLength(15, ErrorMessage = "Name cannot be more than 15 characters")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Age is required"),
        Range(0,25,ErrorMessage="Age must be between 0 to 25")]
        public int Age { get; set; }
    }
}