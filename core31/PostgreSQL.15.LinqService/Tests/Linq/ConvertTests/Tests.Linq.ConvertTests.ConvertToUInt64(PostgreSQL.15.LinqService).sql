BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p_1 Numeric(1, 0) -- Decimal
SET     @p_1 = 0

SELECT
	p.c1
FROM
	(
		SELECT
			Cast(Floor(CASE
				WHEN t."MoneyValue" - Floor(t."MoneyValue") = 0.5 AND Floor(t."MoneyValue") % 2 = 0
					THEN Floor(t."MoneyValue")
				ELSE Round(t."MoneyValue", 0)
			END) as decimal(20)) as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p.c1 > :p_1

