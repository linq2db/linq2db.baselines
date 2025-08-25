BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = -1

SELECT
	DateValue(DateAdd('q', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

