BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = @BoolValue,
	[DateTimeValue] = CURRENT_TIMESTAMP
WHERE
	[LinqDataTypes].[ID] = 100000

