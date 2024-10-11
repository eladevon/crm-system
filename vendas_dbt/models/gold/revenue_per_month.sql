{{ config(materialized='view') }}

-- KPI: Faturamento por Mês (por Ano)
-- Calcula o faturamento total gerado em cada mês em um ano específico.

SELECT
    EXTRACT(MONTH FROM data) AS revenue_month,
    SUM(valor) AS revenue_per_month
FROM
    {{ ref('silver_vendas') }}
WHERE EXTRACT(YEAR FROM data) = {{ var('ano', default=2024) }}
GROUP BY
    revenue_month
ORDER BY
    revenue_month ASC
