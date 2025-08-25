BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Ln(p."MoneyValue"::Float)) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.10000000000000001

