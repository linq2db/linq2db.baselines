BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	DateValue(DateAdd('ww', -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

