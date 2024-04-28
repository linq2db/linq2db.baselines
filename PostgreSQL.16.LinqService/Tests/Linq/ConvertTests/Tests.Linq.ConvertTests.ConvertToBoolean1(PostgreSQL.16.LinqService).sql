BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p_1.c1
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue" <> 0 THEN True
				ELSE False
			END as c1
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1.c1 = True

