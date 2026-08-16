-- Access.Jet.Odbc AccessODBC
SELECT
	DateDiff('h', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('h', 100, [t].[DateTimeValue]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('h', 100, [t].[DateTimeValue])), DateAdd('h', DateDiff('h', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])), [t].[DateTimeValue])), DateAdd('h', 100, [t].[DateTimeValue]))) / 3600
FROM
	[LinqDataTypes] [t]

