BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Cast(Floor(Cast(p.MoneyValue as Float)) as Int)
FROM
	LinqDataTypes p
WHERE
	Cast(Floor(Cast(p.MoneyValue as Float)) as Int) > 0

