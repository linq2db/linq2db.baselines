-- DuckDB
SELECT
	p.c1
FROM
	(
		SELECT
			CAST(Floor(CASE
				WHEN t.MoneyValue - FLOOR(t.MoneyValue) = 0.5 THEN CASE
					WHEN FLOOR(t.MoneyValue) % 2 = 0 THEN FLOOR(t.MoneyValue)
					ELSE FLOOR(t.MoneyValue) + 1
				END
				ELSE ROUND(t.MoneyValue, 0)
			END) AS INTEGER) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > 0

