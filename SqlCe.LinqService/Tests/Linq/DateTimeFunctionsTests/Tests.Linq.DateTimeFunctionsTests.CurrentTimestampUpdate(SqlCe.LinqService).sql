BeforeExecute
-- SqlCe (asynchronously)

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = 1,
	[DateTimeValue] = GetDate()
WHERE
	[LinqDataTypes].[ID] = 100000

