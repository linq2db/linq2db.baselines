BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t_1.c1::decimal * 2 = ROUND(t_1.c1::decimal * 2, 5) AND t_1.c1::decimal <> ROUND(t_1.c1::decimal, 5)
			THEN ROUND(t_1.c1::decimal / 2, 5) * 2
		ELSE ROUND(t_1.c1::decimal, 5)
	END::Float
FROM
	(
		SELECT
			CASE
				WHEN t."MoneyValue" * 2 = ROUND(t."MoneyValue" * 2, 1) AND t."MoneyValue" <> ROUND(t."MoneyValue", 1)
					THEN ROUND(t."MoneyValue" / 2, 1) * 2
				ELSE ROUND(t."MoneyValue", 1)
			END::Float as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1 <> 0

