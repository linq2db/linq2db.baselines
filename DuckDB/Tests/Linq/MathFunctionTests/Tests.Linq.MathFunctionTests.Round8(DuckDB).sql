-- DuckDB

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN CAST(p.MoneyValue AS DOUBLE) - FLOOR(CAST(p.MoneyValue AS DOUBLE)) = 0.5 AND (FLOOR(CAST(p.MoneyValue AS DOUBLE)) % 2) = 0
					THEN FLOOR(CAST(p.MoneyValue AS DOUBLE))
				ELSE ROUND(CAST(p.MoneyValue AS DOUBLE), 0)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0

