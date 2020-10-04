BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	(CASE
		WHEN [t].[MoneyValue] - 4.5 = 0
			THEN 0
		ELSE 1
	END = 0 OR CASE
		WHEN [t].[MoneyValue] - 4.5 = 0
			THEN 0
		ELSE 1
	END IS NULL)

