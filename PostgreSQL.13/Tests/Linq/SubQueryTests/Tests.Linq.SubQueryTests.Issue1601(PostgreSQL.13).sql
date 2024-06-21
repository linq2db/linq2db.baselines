BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t2."SUM_1" < 0 THEN True
		ELSE False
	END,
	t2."SUM_1" + 8,
	t2."SUM_1" + t2."SUM_1"
FROM
	(
		SELECT
			(
				SELECT
					SUM(t1."MoneyValue")
				FROM
					"LinqDataTypes" t1
			) as "SUM_1"
		FROM
			"LinqDataTypes" q
	) t2

