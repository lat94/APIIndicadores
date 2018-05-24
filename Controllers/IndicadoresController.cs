using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using APIIndicadores.DAL;
using APIIndicadores.Models;
using Microsoft.AspNetCore.Mvc;

namespace APIIndicadores.Controllers
{
    [Route("api/[controller]")]
    public class IndicadoresController : Controller
    {
        // GET api/values
        [HttpGet("{id}")]
        //utilizando a chave "FromServices", define que IndicadoresDAO será resolvido internamente
        //ao invés de ser requerido como parâmetro na requisição por esta Action
        public IndicadorModel Get([FromServices]IndicadoresDAO _dao, string id)
        {
            return _dao.Obter(id);
        }

        
    }
}
