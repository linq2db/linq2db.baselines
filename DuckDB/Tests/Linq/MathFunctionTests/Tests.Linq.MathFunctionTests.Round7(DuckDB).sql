-- DuckDB
SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue - FLOOR(p.MoneyValue) = 0.5 THEN CASE
					WHEN FLOOR(p.MoneyValue) % 2 = 0 THEN FLOOR(p.MoneyValue)
					ELSE FLOOR(p.MoneyValue) + 1
				END
				ELSE ROUND(p.MoneyValue, 0)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0

