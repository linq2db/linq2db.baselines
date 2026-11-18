-- Access.Ace.OleDb AccessOleDb
SELECT
	CDbl(DateDiff('d', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('n', 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

