BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."MoneyValue"
FROM
	(
		SELECT
			ROUND(p."MoneyValue", 1) as c1,
			p."MoneyValue"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0::decimal(1) AND t.c1 <> 7::decimal(1)

