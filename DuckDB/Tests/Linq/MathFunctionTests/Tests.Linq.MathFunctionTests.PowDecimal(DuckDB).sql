-- DuckDB

SELECT
	t.Value_1
FROM
	(
		SELECT
			Floor(CAST(Power(CAST(p.MoneyValue AS DOUBLE), CAST(3 AS DOUBLE)) AS DECIMAL)) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> 0

