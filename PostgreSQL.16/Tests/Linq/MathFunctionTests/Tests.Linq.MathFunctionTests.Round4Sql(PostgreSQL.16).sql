BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN t_1.c1::decimal * 2 = Round(t_1.c1::decimal * 2, 5) AND t_1.c1::decimal <> Round(t_1.c1::decimal, 5)
			THEN Round(t_1.c1::decimal / 2, 5) * 2
		ELSE Round(t_1.c1::decimal, 5)
	END::Float
FROM
	(
		SELECT
			CASE
				WHEN t."MoneyValue" * 2 = Round(t."MoneyValue" * 2, 1) AND t."MoneyValue" <> Round(t."MoneyValue", 1)
					THEN Round(t."MoneyValue" / 2, 1) * 2
				ELSE Round(t."MoneyValue", 1)
			END::Float as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1 <> 0

