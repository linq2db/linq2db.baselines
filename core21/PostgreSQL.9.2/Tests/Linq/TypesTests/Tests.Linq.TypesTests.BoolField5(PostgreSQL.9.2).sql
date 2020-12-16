BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	(
		SELECT
			CASE
				WHEN t."BoolValue" = False
					THEN True
				ELSE False
			END as b,
			t."MoneyValue"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.b = False

