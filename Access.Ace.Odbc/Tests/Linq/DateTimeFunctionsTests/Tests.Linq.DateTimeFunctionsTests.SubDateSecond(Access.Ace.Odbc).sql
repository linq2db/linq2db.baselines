-- Access.Ace.Odbc AccessODBC
SELECT
	DateDiff('s', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])) + DateDiff('s', DateAdd('s', DateDiff('s', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('n', 100, [t].[DateTimeValue])) / 1
FROM
	[LinqDataTypes] [t]

