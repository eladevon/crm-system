

-- KPI: Valor Médio da Venda (por Ano)
-- Calcula o valor médio das vendas em um ano específico.

SELECT
    EXTRACT(YEAR FROM data) AS year,
    AVG(valor) AS average_sale_value
FROM
    "crmdatabase_92cf"."public"."silver_vendas"
GROUP BY
    year