BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue"::Float > 0 THEN FLOOR(p."MoneyValue"::Float + 0.5)
				ELSE CEIL(p."MoneyValue"::Float - 0.5)
			END as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

