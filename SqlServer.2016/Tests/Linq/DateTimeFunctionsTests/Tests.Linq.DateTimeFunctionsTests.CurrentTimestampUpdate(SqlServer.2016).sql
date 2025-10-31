-- SqlServer.2016

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = 1,
	[DateTimeValue] = CURRENT_TIMESTAMP
WHERE
	[LinqDataTypes].[ID] = 100000

