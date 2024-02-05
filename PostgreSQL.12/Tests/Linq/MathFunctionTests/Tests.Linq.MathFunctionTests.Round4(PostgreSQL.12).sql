BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Cast(CASE
				WHEN p."MoneyValue" * 2 = Round(p."MoneyValue" * 2, 1) AND p."MoneyValue" <> Round(p."MoneyValue", 1)
					THEN Round(p."MoneyValue" / 2, 1) * 2
				ELSE Round(p."MoneyValue", 1)
			END as Float) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

