-- SQLite.MS SQLite

SELECT
	CASE
		WHEN Power(CAST([t].[MoneyValue] AS FloatDouble), 3) > 0
			THEN CAST(Power(CAST([t].[MoneyValue] AS FloatDouble), 3) AS INTEGER)
		ELSE CAST(Power(CAST([t].[MoneyValue] AS FloatDouble), 3) - 0.99999999999999989 AS INTEGER)
	END
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(CASE
		WHEN Power(CAST([t].[MoneyValue] AS FloatDouble), 3) > 0
			THEN CAST(Power(CAST([t].[MoneyValue] AS FloatDouble), 3) AS INTEGER)
		ELSE CAST(Power(CAST([t].[MoneyValue] AS FloatDouble), 3) - 0.99999999999999989 AS INTEGER)
	END AS FloatDouble) <> 0

