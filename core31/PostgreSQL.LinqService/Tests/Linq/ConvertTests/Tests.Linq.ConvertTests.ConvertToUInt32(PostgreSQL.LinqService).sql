BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(CASE
		WHEN t."MoneyValue" - Floor(t."MoneyValue") = 0.5 AND Floor(t."MoneyValue") % 2 = 0
			THEN Floor(t."MoneyValue")
		ELSE Round(t."MoneyValue", 0)
	END) as BigInt)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(CASE
		WHEN t."MoneyValue" - Floor(t."MoneyValue") = 0.5 AND Floor(t."MoneyValue") % 2 = 0
			THEN Floor(t."MoneyValue")
		ELSE Round(t."MoneyValue", 0)
	END) as BigInt) > 0

