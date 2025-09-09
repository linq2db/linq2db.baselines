BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('ww', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

