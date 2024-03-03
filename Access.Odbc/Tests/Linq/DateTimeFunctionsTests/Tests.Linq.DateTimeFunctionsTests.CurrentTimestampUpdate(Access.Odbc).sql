BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True

UPDATE
	[LinqDataTypes] [p]
SET
	[p].[BoolValue] = ?,
	[p].[DateTimeValue] = Now
WHERE
	[p].[ID] = 100000

