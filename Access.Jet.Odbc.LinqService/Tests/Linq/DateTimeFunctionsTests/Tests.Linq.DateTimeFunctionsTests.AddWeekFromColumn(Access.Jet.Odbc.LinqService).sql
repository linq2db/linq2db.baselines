BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	DateValue(DateAdd('ww', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

