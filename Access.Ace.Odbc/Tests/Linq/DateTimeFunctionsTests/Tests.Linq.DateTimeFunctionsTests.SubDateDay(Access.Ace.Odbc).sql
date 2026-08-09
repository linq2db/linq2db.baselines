-- Access.Ace.Odbc AccessODBC
SELECT
	DateDiff('d', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])) + DateDiff('s', DateAdd('d', DateDiff('d', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('h', 100, [t].[DateTimeValue])) / 86400
FROM
	[LinqDataTypes] [t]

