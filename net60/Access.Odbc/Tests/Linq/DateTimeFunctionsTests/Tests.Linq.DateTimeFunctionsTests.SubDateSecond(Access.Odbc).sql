BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	(DATEDIFF('s', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue])) * 10000000) / 10000000
FROM
	[LinqDataTypes] [t]

