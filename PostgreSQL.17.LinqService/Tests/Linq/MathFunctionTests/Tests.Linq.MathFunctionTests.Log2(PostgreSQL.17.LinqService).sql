BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Numeric(1, 0) -- Decimal
SET     @p = 2

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Log(:p, p."MoneyValue")::Float) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0.10000000000000001 OR t.c1 IS NULL

