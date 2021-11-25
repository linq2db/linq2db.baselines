BeforeExecute
-- Informix.DB2 Informix

SELECT
	Floor(LogN(Cast(p.MoneyValue as Float)) / 0.69314718055994529)
FROM
	LinqDataTypes p
WHERE
	(Floor(LogN(Cast(p.MoneyValue as Float)) / 0.69314718055994529) <> 0.10000000000000001 OR Floor(LogN(Cast(p.MoneyValue as Float)) / 0.69314718055994529) IS NULL)

