-- Access.Ace.OleDb AccessOleDb
SELECT
	DateDiff('n', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])) + DateDiff('s', DateAdd('n', DateDiff('n', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('n', 100, [t].[DateTimeValue])) / 60
FROM
	[LinqDataTypes] [t]

