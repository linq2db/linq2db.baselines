BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Cast(Floor(Cast(p.MoneyValue as Float)) as Int)
FROM
	LinqDataTypes p
WHERE
	Cast(Floor(Cast(p.MoneyValue as Float)) as Int) > 0

