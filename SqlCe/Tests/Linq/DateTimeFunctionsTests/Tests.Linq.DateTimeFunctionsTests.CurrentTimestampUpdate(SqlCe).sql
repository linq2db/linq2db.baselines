BeforeExecute
-- SqlCe
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = @BoolValue,
	[DateTimeValue] = GetDate()
WHERE
	[LinqDataTypes].[ID] = 100000

