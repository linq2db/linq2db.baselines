-- Access.Ace.Odbc AccessODBC

SELECT
	DateValue(DateAdd('yyyy', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

