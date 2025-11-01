-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Degrees(Floor(p."MoneyValue")::Int) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1"::Float <> 0.10000000000000001

