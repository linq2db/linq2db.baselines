BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Date Integer -- Int32
SET     @Date = 5

SELECT
	DateValue(DateAdd('d', @Date, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

