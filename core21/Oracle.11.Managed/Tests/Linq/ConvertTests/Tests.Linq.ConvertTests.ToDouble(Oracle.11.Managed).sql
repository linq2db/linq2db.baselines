BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Cast(Floor(Cast(t."MoneyValue" as Float)) as Int)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(Cast(t."MoneyValue" as Float)) as Int) > 0

