BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p Numeric(1, 0) -- Decimal
SET     @p = 0

SELECT
	p_1.c1
FROM
	(
		SELECT
			Cast(Floor(p."MoneyValue") as decimal(20)) as c1
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1.c1 > :p

