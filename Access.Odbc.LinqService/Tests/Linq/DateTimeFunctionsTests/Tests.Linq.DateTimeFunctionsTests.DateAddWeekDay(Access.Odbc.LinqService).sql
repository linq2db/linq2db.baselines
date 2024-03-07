BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	DateValue(DateAdd('w', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

