BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue" >= 0 THEN FLOOR(p."MoneyValue" * POWER(10, 1) + 0.5) / POWER(10, 1)
				ELSE CEIL(p."MoneyValue" * POWER(10, 1) - 0.5) / POWER(10, 1)
			END as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

