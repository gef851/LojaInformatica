# Sistema de Loja de Informática

Projeto acadêmico da disciplina **Modelagem de Banco de Dados**.  
O objetivo é implementar em **SQLite 3** um banco de dados relacional para controle de estoque de uma Loja de Informática, aplicando comandos SQL (INSERT, SELECT, UPDATE e DELETE).

Entidades principais: Cliente, OrdemServico, Manutencao, Peça, Estoque, Saida.  
Relacionamentos: Cliente 1:N Peça; OrdemServico 1:N Peça; Manutencao 1:N Peça; Peça 1:N Peça; Estoque 1:N Peça; Saida.

Scripts disponíveis:  
- `create_tables.sql` → criação das tabelas  
- `insert_data.sql` → inserção de dados fictícios  
- `select_queries.sql` → consultas com filtros e junções  
- `update_delete.sql` → atualizações e exclusões condicionais  

Execução no SQLite 3:  
1. Criar o banco: `sqlite3 loja_de_informatica.db`  
2. Rodar os scripts na ordem:  

.read create_tables.sql 
.read insert_data.sql 
.read select_queries.sql 
.read update_delete.sql

3. Conferir resultados com consultas como:  

SELECT * FROM Peca; 
SELECT * FROM Saida;


Este repositório atende integralmente às exigências da **Experiência Prática IV**, incluindo:  
- Script de INSERT para povoar tabelas principais  
- Script com 2–5 SELECT usando WHERE, ORDER BY, LIMIT, JOIN  
- Script com ao menos 3 UPDATE e 3 DELETE com condições  
- README.md com instruções de execução  
- Repositório público no GitHub  

Autor: **Glauder Emboava Ferreira** – Cruzeiro do Sul Virtual – Ciência da Computação - Modelagem de Banco de Dados - Turma_003_NE – (2025/2)
