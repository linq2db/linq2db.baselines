-- Access.Jet.OleDb AccessOleDb
SELECT
	DateDiff('h', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])) + DateDiff('s', DateAdd('h', DateDiff('h', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])), [t].[DateTimeValue]), DateAdd('h', 100, [t].[DateTimeValue])) / 3600
FROM
	[LinqDataTypes] [t]

