BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue" - FLOOR(p."MoneyValue") = 0.5 AND (FLOOR(p."MoneyValue") % 2) = 0
					THEN FLOOR(p."MoneyValue")
				ELSE ROUND(p."MoneyValue", 0)
			END::Float as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

