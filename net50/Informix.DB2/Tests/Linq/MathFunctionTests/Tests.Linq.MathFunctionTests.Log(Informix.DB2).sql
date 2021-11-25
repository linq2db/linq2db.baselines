BeforeExecute
-- Informix.DB2 Informix

SELECT
	Floor(LogN(Cast(p.MoneyValue as Float)))
FROM
	LinqDataTypes p
WHERE
	(Floor(LogN(Cast(p.MoneyValue as Float))) <> 0.10000000000000001 OR Floor(LogN(Cast(p.MoneyValue as Float))) IS NULL)

