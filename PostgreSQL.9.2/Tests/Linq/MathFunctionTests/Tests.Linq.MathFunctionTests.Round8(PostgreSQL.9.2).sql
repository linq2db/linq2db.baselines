-- PostgreSQL.9.2 PostgreSQL
SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue"::Float::decimal - FLOOR(p."MoneyValue"::Float::decimal) = 0.5
					THEN ROUND(p."MoneyValue"::Float::decimal * 0.5, 0) * 2
				ELSE ROUND(p."MoneyValue"::Float::decimal, 0)
			END::Float as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

