-- DuckDB
SELECT
	t.c1
FROM
	(
		SELECT
			Trunc(CAST(-p.MoneyValue AS DOUBLE)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0.10000000000000001

