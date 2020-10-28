BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CASE
		WHEN Cast([p].[MoneyValue] as Float) - Floor(Cast([p].[MoneyValue] as Float)) = 0.5 AND Floor(Cast([p].[MoneyValue] as Float)) % 2 = 0
			THEN Floor(Cast([p].[MoneyValue] as Float))
		ELSE Round(Cast([p].[MoneyValue] as Float), 0)
	END
FROM
	[LinqDataTypes] [p]
WHERE
	(CASE
		WHEN Cast([p].[MoneyValue] as Float) - Floor(Cast([p].[MoneyValue] as Float)) = 0.5 AND Floor(Cast([p].[MoneyValue] as Float)) % 2 = 0
			THEN Floor(Cast([p].[MoneyValue] as Float))
		ELSE Round(Cast([p].[MoneyValue] as Float), 0)
	END <> 0 OR CASE
		WHEN Cast([p].[MoneyValue] as Float) - Floor(Cast([p].[MoneyValue] as Float)) = 0.5 AND Floor(Cast([p].[MoneyValue] as Float)) % 2 = 0
			THEN Floor(Cast([p].[MoneyValue] as Float))
		ELSE Round(Cast([p].[MoneyValue] as Float), 0)
	END IS NULL)

