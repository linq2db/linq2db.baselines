BeforeExecute
-- SqlCe

UPDATE
	[LinqDataTypes]
SET
	[LinqDataTypes].[BoolValue] = 1,
	[LinqDataTypes].[DateTimeValue] = GetDate()
WHERE
	[LinqDataTypes].[ID] = 100000

