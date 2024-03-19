BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = @BoolValue,
	[DateTimeValue] = CURRENT_TIMESTAMP
WHERE
	[LinqDataTypes].[ID] = 100000

