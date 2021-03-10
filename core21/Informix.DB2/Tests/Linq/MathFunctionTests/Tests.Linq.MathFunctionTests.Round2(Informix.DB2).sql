BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN Cast(p.MoneyValue as Float) - Floor(Cast(p.MoneyValue as Float)) = 0.5 AND Mod(Floor(Cast(p.MoneyValue as Float)), 2) = 0
			THEN Floor(Cast(p.MoneyValue as Float))
		ELSE Round(Cast(p.MoneyValue as Float), 0)
	END
FROM
	LinqDataTypes p
WHERE
	CASE
		WHEN Cast(p.MoneyValue as Float) - Floor(Cast(p.MoneyValue as Float)) = 0.5 AND Mod(Floor(Cast(p.MoneyValue as Float)), 2) = 0
			THEN Floor(Cast(p.MoneyValue as Float))
		ELSE Round(Cast(p.MoneyValue as Float), 0)
	END <> 0

