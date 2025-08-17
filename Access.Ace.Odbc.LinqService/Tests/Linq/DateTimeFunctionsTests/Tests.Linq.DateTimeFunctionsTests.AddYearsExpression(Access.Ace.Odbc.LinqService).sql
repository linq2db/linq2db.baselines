BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @Date Int -- Int32
SET     @Date = 1

SELECT
	DateValue(DateAdd('yyyy', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

