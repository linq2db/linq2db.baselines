-- PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue" > 0 THEN FLOOR(p."MoneyValue" + 0.5)
				ELSE CEIL(p."MoneyValue" - 0.5)
			END as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

