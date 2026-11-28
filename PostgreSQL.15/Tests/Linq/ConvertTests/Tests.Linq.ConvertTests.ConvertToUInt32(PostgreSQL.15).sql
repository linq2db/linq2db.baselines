-- PostgreSQL.15 PostgreSQL12
SELECT
	p.c1
FROM
	(
		SELECT
			Floor(CASE
				WHEN t."MoneyValue" - FLOOR(t."MoneyValue") = 0.5 THEN ROUND(t."MoneyValue" * 0.5, 0) * 2
				ELSE ROUND(t."MoneyValue", 0)
			END)::BigInt as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > 0

