-- Access.Ace.OleDb AccessOleDb
SELECT
	DateDiff('n', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])) + (CDbl(DateDiff('d', DateAdd('n', DateDiff('n', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('n', 100, [t].[DateTimeValue]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('n', DateDiff('n', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('n', 100, [t].[DateTimeValue])), DateAdd('n', DateDiff('n', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])), [t].[DateTimeValue])), DateAdd('n', 100, [t].[DateTimeValue]))) / 60
FROM
	[LinqDataTypes] [t]

