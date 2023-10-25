-- questao 01
select * from Produtos;

-- questao 02
select nome from Fornecedores;

-- questao 03
select * from CategoriasDeProdutos;

-- questao 04 
select * from Produtos where Fornecedor = 5;

-- questao 05
select * from Produtos where Preco >10;  -- obs: Preco >2 end <10;

-- questao 06 
select * from vendas;
select * from itensdevenda;
select * from Vendas V inner join ItensDeVenda IV on V.ID = IV.IDDaVenda
where IV.IDDoProduto = 2;

-- questao 07
select SUM(QuantidadeEmEstoque * Preco) from Produtos;

-- questao 08
select Categoria, sum(QuantidadeEmEstoque * Preco) from Produtos
group by Categoria;

-- questao 09
select * from Produtos where Categoria = 2;

-- questao 10
select * from Vendas where Funcionario = "Maria Santos";

-- questao 11
-- desconsiderar.

-- questao 12
-- desconsiderar.

-- questao 13
-- desconsiderar.

-- questao  14
select * from Fornecedores F INNER JOIN Produtos P on F.ID = P.Fornecedor
group by P.Fornecedor having sum(P.QuantidadeEmEstoque) > 60;