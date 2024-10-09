BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1.c1
FROM
	(
		SELECT
			Floor(CASE
				WHEN p."MoneyValue" - FLOOR(p."MoneyValue") = 0.5 AND (FLOOR(p."MoneyValue") % 2) = 0
					THEN FLOOR(p."MoneyValue")
				ELSE ROUND(p."MoneyValue", 0)
			END)::Int as c1
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1.c1 > 0

