BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN Cast((-[p].[MoneyValue]) as Float) >= 0
			THEN Floor(Cast((-[p].[MoneyValue]) as Float))
		ELSE Ceiling(Cast((-[p].[MoneyValue]) as Float))
	END
FROM
	[LinqDataTypes] [p]
WHERE
	(CASE
		WHEN Cast((-[p].[MoneyValue]) as Float) >= 0
			THEN Floor(Cast((-[p].[MoneyValue]) as Float))
		ELSE Ceiling(Cast((-[p].[MoneyValue]) as Float))
	END <> 0.10000000000000001 OR CASE
		WHEN Cast((-[p].[MoneyValue]) as Float) >= 0
			THEN Floor(Cast((-[p].[MoneyValue]) as Float))
		ELSE Ceiling(Cast((-[p].[MoneyValue]) as Float))
	END IS NULL)

