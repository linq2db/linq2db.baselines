BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Degrees(p."MoneyValue")) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.1

