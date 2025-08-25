BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 3

SELECT
	DateValue(DateAdd('y', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

