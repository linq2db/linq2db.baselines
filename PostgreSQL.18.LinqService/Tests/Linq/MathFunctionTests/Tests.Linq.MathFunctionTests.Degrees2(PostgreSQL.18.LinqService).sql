BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(t."Value_1")
FROM
	(
		SELECT
			Degrees(p."MoneyValue"::Float) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.10000000000000001::float8

