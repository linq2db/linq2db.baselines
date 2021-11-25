BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	CASE
		WHEN p."MoneyValue" - Floor(p."MoneyValue") = 0.5 AND MOD(Floor(p."MoneyValue"), 2) = 0
			THEN Floor(p."MoneyValue")
		ELSE Round(p."MoneyValue", 0)
	END
FROM
	"LinqDataTypes" p
WHERE
	CASE
		WHEN p."MoneyValue" - Floor(p."MoneyValue") = 0.5 AND MOD(Floor(p."MoneyValue"), 2) = 0
			THEN Floor(p."MoneyValue")
		ELSE Round(p."MoneyValue", 0)
	END <> 0

