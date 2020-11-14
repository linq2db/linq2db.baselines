BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
	p.b = True

