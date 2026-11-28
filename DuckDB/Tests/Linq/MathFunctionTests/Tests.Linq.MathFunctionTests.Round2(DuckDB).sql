-- DuckDB
SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN CAST(p.MoneyValue AS DOUBLE) - FLOOR(CAST(p.MoneyValue AS DOUBLE)) = 0.5
					THEN ROUND(CAST(p.MoneyValue AS DOUBLE) * 0.5, 0) * 2
				ELSE ROUND(CAST(p.MoneyValue AS DOUBLE), 0)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0

