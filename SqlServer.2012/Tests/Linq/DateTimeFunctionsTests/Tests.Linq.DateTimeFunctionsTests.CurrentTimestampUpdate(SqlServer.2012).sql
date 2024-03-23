BeforeExecute
-- SqlServer.2012
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = @BoolValue,
	[DateTimeValue] = CURRENT_TIMESTAMP
WHERE
	[LinqDataTypes].[ID] = 100000

