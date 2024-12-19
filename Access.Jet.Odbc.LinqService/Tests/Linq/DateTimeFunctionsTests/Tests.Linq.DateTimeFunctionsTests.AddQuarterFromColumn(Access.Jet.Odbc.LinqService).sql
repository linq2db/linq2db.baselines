BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	DateValue(DateAdd('q', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

