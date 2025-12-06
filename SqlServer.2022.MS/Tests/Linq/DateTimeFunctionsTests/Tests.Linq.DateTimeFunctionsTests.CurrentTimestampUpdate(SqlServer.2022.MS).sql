-- SqlServer.2022.MS SqlServer.2022

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = 1,
	[DateTimeValue] = CURRENT_TIMESTAMP
WHERE
	[LinqDataTypes].[ID] = 100000

