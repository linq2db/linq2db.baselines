BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN t2.x < 0::decimal(1) THEN 9::decimal(1)
		ELSE t2.x + 8::decimal(1)
	END,
	t2.x + t2.x
FROM
	(
		SELECT
			(
				SELECT
					SUM(t1."MoneyValue")
				FROM
					"LinqDataTypes" t1
			) as x
		FROM
			"LinqDataTypes" q
	) t2

