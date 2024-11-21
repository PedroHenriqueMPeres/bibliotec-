using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace bibliotec.Models
{
    public class Livro
    {   [Key]
        public string atributos;
        public int livroID;
        public string nome;
        public string escritor;
        public string editora;
        public string descricao;
        public string idioma;
        public string imagem;
        public bool Reservado;
        public bool Ativo;

        [ForeignKey("Categoria")]
        
        public int CategoriaId;
        public Categoria categoria;


    }
}