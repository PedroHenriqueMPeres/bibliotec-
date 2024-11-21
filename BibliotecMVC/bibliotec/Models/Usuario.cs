using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace bibliotec.Models
{
    public class Usuario
    {   [Key]
        public int UsuarioId;
        public string Name;
        public string Email;
        public string Phone;
        public string senha;
        public DateOnly DtNascimento;
        public bool Admin;
        public bool Status;

    [ForeignKey("Curso")]
        public int CursoID;
        public Curso Curso;
    }
}