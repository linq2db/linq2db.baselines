BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	DATEDIFF('h', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

