BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			Floor(CASE
				WHEN t."MoneyValue" - FLOOR(t."MoneyValue") = 0.5::float8 AND (FLOOR(t."MoneyValue") % 2) = 0
					THEN FLOOR(t."MoneyValue")
				ELSE ROUND(t."MoneyValue", 0)
			END)::Int as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

