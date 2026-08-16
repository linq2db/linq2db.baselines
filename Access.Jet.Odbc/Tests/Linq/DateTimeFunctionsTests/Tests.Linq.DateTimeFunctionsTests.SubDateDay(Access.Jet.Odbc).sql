-- Access.Jet.Odbc AccessODBC
SELECT
	DateDiff('d', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('h', 100, [t].[DateTimeValue]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('h', 100, [t].[DateTimeValue])), DateAdd('d', DateDiff('d', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])), [t].[DateTimeValue])), DateAdd('h', 100, [t].[DateTimeValue]))) / 86400
FROM
	[LinqDataTypes] [t]

