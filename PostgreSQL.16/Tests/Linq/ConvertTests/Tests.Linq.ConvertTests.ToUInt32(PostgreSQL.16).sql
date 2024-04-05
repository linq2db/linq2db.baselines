BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Bigint -- Int64
SET     @p = 0

SELECT
	p_1.c1
FROM
	(
		SELECT
			Floor(p."MoneyValue")::BigInt as c1
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1.c1 > :p

