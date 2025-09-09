BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Sin(p."MoneyValue"::Float / 15) * 15) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.10000000000000001

