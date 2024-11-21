using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace bibliotec.Models
{
    public class Curso
    {   [Key]
        public int CursoID;
        public string Nome;
        public char Periodo;
        [ForeignKey("Categoria")]

        public int CategoriaId;
        public Categoria categoria;
    }
}