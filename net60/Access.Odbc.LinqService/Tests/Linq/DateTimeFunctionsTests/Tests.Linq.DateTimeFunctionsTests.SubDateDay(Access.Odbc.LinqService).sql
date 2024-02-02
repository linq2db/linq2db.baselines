BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	(DATEDIFF('s', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue])) * 10000000) / 864000000000
FROM
	[LinqDataTypes] [t]

