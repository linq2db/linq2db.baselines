BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Cast(Floor(t."MoneyValue") as Int)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as Int) > 0

