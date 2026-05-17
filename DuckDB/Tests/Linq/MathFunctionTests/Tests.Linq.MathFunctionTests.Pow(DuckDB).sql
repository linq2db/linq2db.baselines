-- DuckDB

SELECT
	t.Value_1
FROM
	(
		SELECT
			Floor(Power(CAST(p.MoneyValue AS DOUBLE), 3)) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> 0

