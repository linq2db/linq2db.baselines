BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Cast(Floor(t.MoneyValue) as Number(19))
FROM
	LinqDataTypes t
WHERE
	Cast(Floor(t.MoneyValue) as Number(19)) > 0

