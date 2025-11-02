-- SQLite.MS SQLite

SELECT
	CASE
		WHEN Degrees([t].[MoneyValue]) > 0 THEN CAST(Degrees([t].[MoneyValue]) AS INTEGER)
		ELSE CAST(Degrees([t].[MoneyValue]) - 0.9999999999999999 AS INTEGER)
	END
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(CASE
		WHEN Degrees([t].[MoneyValue]) > 0 THEN CAST(Degrees([t].[MoneyValue]) AS INTEGER)
		ELSE CAST(Degrees([t].[MoneyValue]) - 0.9999999999999999 AS INTEGER)
	END AS Decimal) <> 0.1

