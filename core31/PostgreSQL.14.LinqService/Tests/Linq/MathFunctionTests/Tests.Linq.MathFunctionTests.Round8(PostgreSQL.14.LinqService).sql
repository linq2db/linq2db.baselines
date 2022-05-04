BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Cast(CASE
				WHEN p."MoneyValue" - Floor(p."MoneyValue") = 0.5 AND Floor(p."MoneyValue") % 2 = 0
					THEN Floor(p."MoneyValue")
				ELSE Round(p."MoneyValue", 0)
			END as Float) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

