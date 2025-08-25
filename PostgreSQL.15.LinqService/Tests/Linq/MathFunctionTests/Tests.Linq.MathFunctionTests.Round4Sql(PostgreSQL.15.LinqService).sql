BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	CASE
		WHEN t.c1::decimal * 2 = ROUND(t.c1::decimal * 2, 5) AND t.c1::decimal <> ROUND(t.c1::decimal, 5)
			THEN ROUND(t.c1::decimal / 2, 5) * 2
		ELSE ROUND(t.c1::decimal, 5)
	END::Float
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue" * 2 = ROUND(p."MoneyValue" * 2, 1) AND p."MoneyValue" <> ROUND(p."MoneyValue", 1)
					THEN ROUND(p."MoneyValue" / 2, 1) * 2
				ELSE ROUND(p."MoneyValue", 1)
			END::Float as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

