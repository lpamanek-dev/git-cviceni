-- Účel: počet a obrat objednávek po měsících
-- Zdroj: samples.tpch.orders
SELECT
    DATE_TRUNC('MONTH', o_orderdate) AS mesic,
    COUNT(*)                         AS pocet_objednavek,
    ROUND(SUM(o_totalprice), 0)      AS obrat
FROM samples.tpch.orders
    WHERE o_orderstatus  <> 'P'
GROUP BY 1
ORDER BY 1;
