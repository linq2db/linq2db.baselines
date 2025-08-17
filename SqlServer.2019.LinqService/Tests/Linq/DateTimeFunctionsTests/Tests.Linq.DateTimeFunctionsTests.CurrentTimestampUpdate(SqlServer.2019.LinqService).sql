BeforeExecute
-- SqlServer.2019 (asynchronously)

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = 1,
	[DateTimeValue] = CURRENT_TIMESTAMP
WHERE
	[LinqDataTypes].[ID] = 100000

