BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Cast(t.MoneyValue as Decimal(29, 10))
FROM
	LinqDataTypes t
WHERE
	Cast(t.MoneyValue as Decimal(29, 10)) > 0

