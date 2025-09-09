BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p.c1
FROM
	(
		SELECT
			Floor(CASE
				WHEN t."MoneyValue" - FLOOR(t."MoneyValue") = 0.5 AND (FLOOR(t."MoneyValue") % 2) = 0
					THEN FLOOR(t."MoneyValue")
				ELSE ROUND(t."MoneyValue", 0)
			END)::Int as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

