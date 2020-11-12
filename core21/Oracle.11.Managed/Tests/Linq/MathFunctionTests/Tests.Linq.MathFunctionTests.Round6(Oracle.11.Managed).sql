BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Round(Cast(t.MoneyValue as Float), 0)
FROM
	LinqDataTypes t
WHERE
	(Round(Cast(t.MoneyValue as Float), 0) <> 0D OR Round(Cast(t.MoneyValue as Float), 0) IS NULL)

