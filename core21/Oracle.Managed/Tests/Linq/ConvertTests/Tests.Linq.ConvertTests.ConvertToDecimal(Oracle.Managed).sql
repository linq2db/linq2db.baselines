BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Cast(t."MoneyValue" as Decimal(29, 10))
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as Decimal(29, 10)) > 0

