BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Date Int -- Int32
SET     @Date = 5

SELECT
	DateValue(DateAdd('d', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

