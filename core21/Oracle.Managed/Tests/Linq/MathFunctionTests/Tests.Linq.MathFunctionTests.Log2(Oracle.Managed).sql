BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Floor(Log(2D, Cast(p."MoneyValue" as Float)))
FROM
	"LinqDataTypes" p
WHERE
	(Floor(Log(2D, Cast(p."MoneyValue" as Float))) <> 0.10000000000000001D OR Floor(Log(2D, Cast(p."MoneyValue" as Float))) IS NULL)

