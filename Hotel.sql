#a. Exiba os nomes de todos os hospedes.
select  nome from Hospedes;

#b. Exiba todos os dados dos serviços.
select * from Servicos;

#c. Mostre o tipo, o valor da diária, e o lucro mensal de cada quarto (valor da
#diária * 31). Renomeie esta última coluna para Valor da Diária/Mês.
select tipo, valorDiaria * 31 'Diária/Mês' from Quartos;

#d. Mostre a soma e a média dos preços de todos os serviços.
select sum(preco) 'Preço dos serviços', avg(preco) 'Média dos preços' from Servicos;

#e. Mostre o valor da diária do quarto mais caro e do mais barato.
select max(valorDiaria) 'Quarto mais caro', min(valorDiaria) 'Quarto mais barato' from Quartos;

#f. Exiba a data de nascimento do hóspede mais novo.
select max(dataNascimento) ' Data de nascimento do hóspede mais novo' from Hospedes;

#g. Mostre quantos serviços foram solicitados pelo hóspede de CPF ‘922411035844’.
select count(*)'Quantidade de serviços solicitados' from Servicos se, Solicitacoes so, Hospedes ho
where so.hospede = ho.cpf and so.servico = se.codServico and ho.cpf = '922411035844';

#h. Mostre quantos hóspedes distintos já tiveram estadias.
select count(distinct hospede)'Quantidade de estadias' from Estadias;

#i. Mostre a descrição, preço e o preço com 35% de aumento, de todos os serviços.
#j. Quais os nomes dos hóspedes que nasceram no ano de 1990?
#k. Quais os dados dos quartos que possuem valor de diária maior que R$ 200,00?
#l. Mostre os dados de todos os hóspedes que tiveram estadias no ano de 2011.
#m. Exiba os dados dos serviços solicitados em outubro de 2012.
#n. Exiba os nomes dos hóspedes e a hora da solicitação do serviço, para
#hospedes que solicitaram serviços de Lavanderia ou de Babá.
#o. Mostre quantos serviços foram solicitados por hóspedes do sexo masculino,
#no primeiro semestre de 2012.
