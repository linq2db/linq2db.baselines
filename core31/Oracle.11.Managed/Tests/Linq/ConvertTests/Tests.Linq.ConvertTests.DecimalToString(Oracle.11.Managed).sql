BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Cast(t."MoneyValue" as VarChar(31))
FROM
	"LinqDataTypes" t
WHERE
	Length(Cast(t."MoneyValue" as VarChar(31))) > 0

