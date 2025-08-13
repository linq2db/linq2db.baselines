BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	DatePart('h', DateAdd('h', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

