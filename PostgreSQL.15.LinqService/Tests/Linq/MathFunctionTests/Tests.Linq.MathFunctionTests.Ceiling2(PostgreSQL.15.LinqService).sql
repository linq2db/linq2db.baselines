BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Ceiling(p."MoneyValue") as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0

