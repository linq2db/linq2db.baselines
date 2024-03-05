BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue Boolean
SET     @BoolValue = True

UPDATE
	[LinqDataTypes] [p]
SET
	[p].[BoolValue] = @BoolValue,
	[p].[DateTimeValue] = Now
WHERE
	[p].[ID] = 100000

