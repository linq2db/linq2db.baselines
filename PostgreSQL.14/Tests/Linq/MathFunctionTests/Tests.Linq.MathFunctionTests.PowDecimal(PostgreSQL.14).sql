-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Power(p."MoneyValue"::Float, 3::Float)::decimal) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0

