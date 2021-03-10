BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Cast(Floor(CASE
		WHEN t."MoneyValue" - Floor(t."MoneyValue") = 0.5 AND MOD(Floor(t."MoneyValue"), 2) = 0
			THEN Floor(t."MoneyValue")
		ELSE Round(t."MoneyValue", 0)
	END) as Number(3))
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(CASE
		WHEN t."MoneyValue" - Floor(t."MoneyValue") = 0.5 AND MOD(Floor(t."MoneyValue"), 2) = 0
			THEN Floor(t."MoneyValue")
		ELSE Round(t."MoneyValue", 0)
	END) as Number(3)) > 0

