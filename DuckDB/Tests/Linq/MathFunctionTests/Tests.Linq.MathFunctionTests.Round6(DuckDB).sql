-- DuckDB

SELECT
	t.c1
FROM
	(
		SELECT
			ROUND(CAST(p.MoneyValue AS DOUBLE)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0

