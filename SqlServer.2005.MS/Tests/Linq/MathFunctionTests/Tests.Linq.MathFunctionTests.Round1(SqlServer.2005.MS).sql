-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	CASE
		WHEN [t].[MoneyValue] - FLOOR([t].[MoneyValue]) = 0.5 AND (FLOOR([t].[MoneyValue]) % 2) = 0
			THEN FLOOR([t].[MoneyValue])
		ELSE ROUND([t].[MoneyValue], 0)
	END <> 0

