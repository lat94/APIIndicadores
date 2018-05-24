using MySql.Data.MySqlClient;
using Microsoft.Extensions.Configuration;
using Dapper;
using APIIndicadores.Models;

namespace APIIndicadores.DAL
{
    public class IndicadoresDAO
    {
        private IConfiguration _configuracoes;
        
        //acessa o arquivo "appsettings.json" através de injeção de dependência
        public IndicadoresDAO(IConfiguration config)
        {
            _configuracoes = config;
        }

        public IndicadorModel Obter(string codIndicador)
        {
            using (MySqlConnection conexao = new MySqlConnection(
                //recupera a string de conexão
                _configuracoes.GetConnectionString("BaseIndicadores")))
            {
                //retorna os dados utilizando o método "QueryFirstOrDefault" do "Dapper".
                return conexao.QueryFirstOrDefault<IndicadorModel>(
                    "SELECT Sigla, NomeIndicador, UltimaAtualizacao, Valor " +
                    "FROM Indicadores " +
                    "WHERE Sigla = @CodIndicador ",
                    new { CodIndicador = codIndicador }
                );
            }
        }
    }
}