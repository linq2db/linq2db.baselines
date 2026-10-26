-- DuckDB
SELECT
	p.c1
FROM
	(
		SELECT
			CAST(Floor(CASE
				WHEN t.MoneyValue - FLOOR(t.MoneyValue) = 0.5 THEN ROUND(t.MoneyValue * 0.5, 0) * 2
				ELSE ROUND(t.MoneyValue, 0)
			END) AS USMALLINT) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > 0

