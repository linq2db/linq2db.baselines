BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

UPDATE
	[LinqDataTypes] [p]
SET
	[p].[BoolValue] = True,
	[p].[DateTimeValue] = Now
WHERE
	[p].[ID] = 100000

