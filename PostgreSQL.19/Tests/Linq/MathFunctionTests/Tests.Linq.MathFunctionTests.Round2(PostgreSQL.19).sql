-- PostgreSQL.19 PostgreSQL12
SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue"::Float::decimal - FLOOR(p."MoneyValue"::Float::decimal) = 0.5 AND FLOOR(p."MoneyValue"::Float::decimal) % 2 = 0
					THEN FLOOR(p."MoneyValue"::Float::decimal)
				ELSE ROUND(p."MoneyValue"::Float::decimal, 0)
			END::Float as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

