BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Power(p."MoneyValue"::Float, 3::decimal(1)::Float)::decimal) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0::decimal(1)

