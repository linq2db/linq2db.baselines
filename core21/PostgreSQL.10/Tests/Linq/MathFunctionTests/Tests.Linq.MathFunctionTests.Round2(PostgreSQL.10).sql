BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN p."MoneyValue" - Floor(p."MoneyValue") = 0.5 AND Floor(p."MoneyValue") % 2 = 0
			THEN Floor(p."MoneyValue")
		ELSE Round(p."MoneyValue", 0)
	END
FROM
	"LinqDataTypes" p
WHERE
	(CASE
		WHEN p."MoneyValue" - Floor(p."MoneyValue") = 0.5 AND Floor(p."MoneyValue") % 2 = 0
			THEN Floor(p."MoneyValue")
		ELSE Round(p."MoneyValue", 0)
	END <> 0 OR CASE
		WHEN p."MoneyValue" - Floor(p."MoneyValue") = 0.5 AND Floor(p."MoneyValue") % 2 = 0
			THEN Floor(p."MoneyValue")
		ELSE Round(p."MoneyValue", 0)
	END IS NULL)

