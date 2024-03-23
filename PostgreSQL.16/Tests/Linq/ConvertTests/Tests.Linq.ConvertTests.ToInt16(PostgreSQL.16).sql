BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p_1.c1
FROM
	(
		SELECT
			Cast(Floor(p."MoneyValue") as SmallInt) as c1
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1.c1 > 0

