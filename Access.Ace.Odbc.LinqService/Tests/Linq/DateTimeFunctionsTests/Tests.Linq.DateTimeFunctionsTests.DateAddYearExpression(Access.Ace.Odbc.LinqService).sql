BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 11

SELECT
	DateValue(DateAdd('yyyy', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

