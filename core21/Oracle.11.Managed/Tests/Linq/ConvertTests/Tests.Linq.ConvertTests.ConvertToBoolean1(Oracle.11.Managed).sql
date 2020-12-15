BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	CASE
		WHEN t."MoneyValue" <> 0 THEN 1
		ELSE 0
	END
FROM
	"LinqDataTypes" t
WHERE
	(t."MoneyValue" <> 0)

