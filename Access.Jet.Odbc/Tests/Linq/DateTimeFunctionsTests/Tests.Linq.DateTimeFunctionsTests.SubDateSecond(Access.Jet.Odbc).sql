-- Access.Jet.Odbc AccessODBC
SELECT
	DateDiff('s', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

