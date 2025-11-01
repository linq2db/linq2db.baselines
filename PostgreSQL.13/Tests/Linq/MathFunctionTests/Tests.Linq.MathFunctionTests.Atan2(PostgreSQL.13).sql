-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Atan2(p."MoneyValue"::Float / 15, 0) * 15) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.10000000000000001

