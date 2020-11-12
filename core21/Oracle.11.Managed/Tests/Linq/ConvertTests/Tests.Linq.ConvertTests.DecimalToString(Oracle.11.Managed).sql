BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Cast(t.MoneyValue as VarChar2(31))
FROM
	LinqDataTypes t
WHERE
	Length(Cast(t.MoneyValue as VarChar2(31))) > 0

